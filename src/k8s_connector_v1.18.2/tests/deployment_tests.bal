import ballerina/test;
import hemikak/k8s_models_v1.'18.'2 as models;

@test:Config {}
public function getAllDeploymentsTest() {
    KubernetesClientConfig config = {
        masterURL: "https://kubernetes.docker.internal:6443",
        authConfig: {
            keystorePath: "/Users/hemikak/Downloads/kubernetes-truststore.jks",
            keystorePassword: "changeit"
        }
        // clientConfig: {
        //     followRedirects: {
        //         enabled: true
        //     },
        //     secureSocket: {
        //         trustStore: {
        //             path: "/Users/hemikak/Downloads/kubernetes-truststore.jks",
        //             password: "changeit"
        //         },
        //         keyStore: {
        //             path: "/Users/hemikak/Downloads/kubernetes-truststore.jks",
        //             password: "changeit"
        //         },

        //         verifyHostname: false,
        //         certFile: "/Users/hemikak/Documents/personal/k8s-ballerina/k8s-connector/k.cert"
        //         // trustedCertFile: "/Users/hemikak/Documents/personal/k8s-ballerina/k8s-connector/k.cert"
        //     }
        // }
    };
    KubernetesClient kubectl = new KubernetesClient(config);
    // KubernetesGetClient kGetClient = kubectl.get;
    // models:'io\.k8s\.api\.apps\.v1\.DeploymentList|error d = kGetClient->deployments();
    models:'io\.k8s\.api\.apps\.v1\.DeploymentList deployments = checkpanic kubectl->getDeployments();
}