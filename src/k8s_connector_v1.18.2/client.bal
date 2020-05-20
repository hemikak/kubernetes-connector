import ballerina/auth;
import ballerina/oauth2;
import ballerina/http;
import hemikak/k8s_models_v1.'18.'2 as models;
import hemikak/k8s_generated_client_v1.'18.'2 as genClient;

public type BasicAuthConfig record {|
    string username;
    string password;
|};

public type OAuthConfig record {|
    string accessToken;
|};

public type MutualSSLConfig record {|
    string keystorePath;
    string keystorePassword;
|};

public type KubernetesClientConfig record {|
    string masterURL;
    string namespace = "default";
    BasicAuthConfig|OAuthConfig|MutualSSLConfig authConfig;
    string trustStorePath?;
    string trustStorePassword?;
    http:ClientConfiguration clientConfig = {};
|};

public type KubernetesClient client object {
    public genClient:InternalKubernetesClient internalClient;
    public KubernetesClientConfig config;

    public function __init(KubernetesClientConfig config) {
        http:OutboundAuthHandler authHandler;
        BasicAuthConfig|OAuthConfig|MutualSSLConfig authConfig = config.authConfig;
        if (authConfig is BasicAuthConfig) {
            auth:OutboundBasicAuthProvider outboundBasicAuthProvider = new({
                username: authConfig.username,
                password: authConfig.password
            });
            config.clientConfig.auth = {
                authHandler: new http:BasicAuthHandler(outboundBasicAuthProvider)
            };
        } else if (authConfig is OAuthConfig) {
            oauth2:OutboundOAuth2Provider outputOAuth2Provider = new({
                accessToken: authConfig.accessToken
            });
            config.clientConfig.auth = {
                authHandler: new http:BearerAuthHandler(outputOAuth2Provider)
            };
        } else {
            http:ClientSecureSocket clientSecureSocket = {
                keyStore: {
                    path: authConfig.keystorePath,
                    password: authConfig.keystorePassword
                },
                protocol: {
                    name: "TLS"
                },
                ciphers: ["TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"]
            };

            string? trustStorePath = config?.trustStorePath;
            string? trustStorePassword = config?.trustStorePassword;
            if (trustStorePath is string && trustStorePassword is string) {
                clientSecureSocket.trustStore = {
                    path: trustStorePath,
                    password: trustStorePassword
                };
            }
            config.clientConfig.secureSocket = clientSecureSocket;
        }

        genClient:InternalKubernetesClientConfig internalClientConfig = {
            serviceUrl: config.masterURL,
            clientConfig: config.clientConfig
        };

        self.config = config;

        genClient:InternalKubernetesClient internalKubernetesClient = new(internalClientConfig);
        self.internalClient = internalKubernetesClient;
    }

    public remote function getDeployments(string? name = ()) returns models:'io\.k8s\.api\.apps\.v1\.DeploymentList|error {
        if (name is ()) {
            http:Response|error deploymentsResponseOrError = self.internalClient->listAppsV1DeploymentForAllNamespaces();

            if (deploymentsResponseOrError is error) {
                return deploymentsResponseOrError;
            }

            http:Response deploymentsResponse = <http:Response>deploymentsResponseOrError;
            json|error deploymentListJsonOrError = deploymentsResponse.getJsonPayload();

            if (deploymentListJsonOrError is error) {
                // return error("DATA_ERROR", message = deploymentListJsonOrError.detail()?.message);
                return error("DATA_ERROR");
            }

            json deploymentListJson = <json>deploymentListJsonOrError;
            if (deploymentsResponse.statusCode == 401) {
                // return error("AUTH_ERROR", message = deploymentListJson.detail()?.message);
                return error("AUTH_ERROR");
            }

            return <@untainted>models:'io\.k8s\.api\.apps\.v1\.DeploymentList.constructFrom(deploymentListJson);
        }

        return error("AUTH_ERROR");
    }
};