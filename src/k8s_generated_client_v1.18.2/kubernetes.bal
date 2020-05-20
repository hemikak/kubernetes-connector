import ballerina/http;
import hemikak/k8s_models_v1.'18.'2 as models;

//=====================================
//============Client Config============
//=====================================
public type InternalKubernetesClientConfig record {
    string serviceUrl;
    http:ClientConfiguration clientConfig;
};

//==============================
//============Client============
//==============================
public type InternalKubernetesClient client object {
    public http:Client clientEp;
    public InternalKubernetesClientConfig config;

    public function __init(InternalKubernetesClientConfig config) {
        http:Client httpEp = new(config.serviceUrl, {auth: config.clientConfig.auth, cache: config.clientConfig.cache});
        self.clientEp = httpEp;
        self.config = config;
    }

    public remote function getCoreAPIVersions() returns http:Response | error {
        http:Client getCoreAPIVersionsEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getCoreAPIVersionsEp->get("/api/", message = request);
    }
    
    public remote function getCoreV1APIResources() returns http:Response | error {
        http:Client getCoreV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getCoreV1APIResourcesEp->get("/api/v1/", message = request);
    }
    
    public remote function listCoreV1ComponentStatus() returns http:Response | error {
        http:Client listCoreV1ComponentStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ComponentStatusEp->get("/api/v1/componentstatuses", message = request);
    }
    
    public remote function readCoreV1ComponentStatus(string name) returns http:Response | error {
        http:Client readCoreV1ComponentStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1ComponentStatusEp->get(string `/api/v1/componentstatuses/${name}`, message = request);
    }
    
    public remote function listCoreV1ConfigMapForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1ConfigMapForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ConfigMapForAllNamespacesEp->get("/api/v1/configmaps", message = request);
    }
    
    public remote function listCoreV1EndpointsForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1EndpointsForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1EndpointsForAllNamespacesEp->get("/api/v1/endpoints", message = request);
    }
    
    public remote function listCoreV1EventForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1EventForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1EventForAllNamespacesEp->get("/api/v1/events", message = request);
    }
    
    public remote function listCoreV1LimitRangeForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1LimitRangeForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1LimitRangeForAllNamespacesEp->get("/api/v1/limitranges", message = request);
    }
    
    public remote function listCoreV1Namespace() returns http:Response | error {
        http:Client listCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespaceEp->get("/api/v1/namespaces", message = request);
    }
    
    public remote function createCoreV1Namespace(models:'io\.k8s\.api\.core\.v1\.Namespace createCoreV1NamespaceBody) returns http:Response | error {
        http:Client createCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespaceEp->post("/api/v1/namespaces", request);
    }
    
    public remote function createCoreV1NamespacedBinding(models:'io\.k8s\.api\.core\.v1\.Binding createCoreV1NamespacedBindingBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedBindingEp->post(string `/api/v1/namespaces/${namespace}/bindings`, request);
    }
    
    public remote function listCoreV1NamespacedConfigMap(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedConfigMapEp->get(string `/api/v1/namespaces/${namespace}/configmaps`, message = request);
    }
    
    public remote function createCoreV1NamespacedConfigMap(models:'io\.k8s\.api\.core\.v1\.ConfigMap createCoreV1NamespacedConfigMapBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedConfigMapEp->post(string `/api/v1/namespaces/${namespace}/configmaps`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedConfigMap(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedConfigMapBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedConfigMapEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedConfigMapEp->delete(string `/api/v1/namespaces/${namespace}/configmaps`, request);
    }
    
    public remote function readCoreV1NamespacedConfigMap(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedConfigMapEp->get(string `/api/v1/namespaces/${namespace}/configmaps/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedConfigMap(models:'io\.k8s\.api\.core\.v1\.ConfigMap replaceCoreV1NamespacedConfigMapBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedConfigMapEp->put(string `/api/v1/namespaces/${namespace}/configmaps/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedConfigMap(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedConfigMapBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedConfigMapEp->delete(string `/api/v1/namespaces/${namespace}/configmaps/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedConfigMap(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedConfigMapBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedConfigMapEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedConfigMapEp->patch(string `/api/v1/namespaces/${namespace}/configmaps/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedEndpoints(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedEndpointsEp->get(string `/api/v1/namespaces/${namespace}/endpoints`, message = request);
    }
    
    public remote function createCoreV1NamespacedEndpoints(models:'io\.k8s\.api\.core\.v1\.Endpoints createCoreV1NamespacedEndpointsBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedEndpointsEp->post(string `/api/v1/namespaces/${namespace}/endpoints`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedEndpoints(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedEndpointsBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedEndpointsEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedEndpointsEp->delete(string `/api/v1/namespaces/${namespace}/endpoints`, request);
    }
    
    public remote function readCoreV1NamespacedEndpoints(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedEndpointsEp->get(string `/api/v1/namespaces/${namespace}/endpoints/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedEndpoints(models:'io\.k8s\.api\.core\.v1\.Endpoints replaceCoreV1NamespacedEndpointsBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedEndpointsEp->put(string `/api/v1/namespaces/${namespace}/endpoints/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedEndpoints(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedEndpointsBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedEndpointsEp->delete(string `/api/v1/namespaces/${namespace}/endpoints/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedEndpoints(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedEndpointsBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedEndpointsEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedEndpointsEp->patch(string `/api/v1/namespaces/${namespace}/endpoints/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedEvent(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedEventEp->get(string `/api/v1/namespaces/${namespace}/events`, message = request);
    }
    
    public remote function createCoreV1NamespacedEvent(models:'io\.k8s\.api\.core\.v1\.Event createCoreV1NamespacedEventBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedEventEp->post(string `/api/v1/namespaces/${namespace}/events`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedEventBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedEventEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedEventEp->delete(string `/api/v1/namespaces/${namespace}/events`, request);
    }
    
    public remote function readCoreV1NamespacedEvent(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedEventEp->get(string `/api/v1/namespaces/${namespace}/events/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedEvent(models:'io\.k8s\.api\.core\.v1\.Event replaceCoreV1NamespacedEventBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedEventEp->put(string `/api/v1/namespaces/${namespace}/events/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedEventBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedEventEp->delete(string `/api/v1/namespaces/${namespace}/events/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedEventBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedEventEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedEventEp->patch(string `/api/v1/namespaces/${namespace}/events/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedLimitRange(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedLimitRangeEp->get(string `/api/v1/namespaces/${namespace}/limitranges`, message = request);
    }
    
    public remote function createCoreV1NamespacedLimitRange(models:'io\.k8s\.api\.core\.v1\.LimitRange createCoreV1NamespacedLimitRangeBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedLimitRangeEp->post(string `/api/v1/namespaces/${namespace}/limitranges`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedLimitRange(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedLimitRangeBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedLimitRangeEp->delete(string `/api/v1/namespaces/${namespace}/limitranges`, request);
    }
    
    public remote function readCoreV1NamespacedLimitRange(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedLimitRangeEp->get(string `/api/v1/namespaces/${namespace}/limitranges/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedLimitRange(models:'io\.k8s\.api\.core\.v1\.LimitRange replaceCoreV1NamespacedLimitRangeBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedLimitRangeEp->put(string `/api/v1/namespaces/${namespace}/limitranges/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedLimitRange(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedLimitRangeBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedLimitRangeEp->delete(string `/api/v1/namespaces/${namespace}/limitranges/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedLimitRange(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedLimitRangeBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedLimitRangeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedLimitRangeEp->patch(string `/api/v1/namespaces/${namespace}/limitranges/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedPersistentVolumeClaim(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedPersistentVolumeClaimEp->get(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims`, message = request);
    }
    
    public remote function createCoreV1NamespacedPersistentVolumeClaim(models:'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim createCoreV1NamespacedPersistentVolumeClaimBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedPersistentVolumeClaimEp->post(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedPersistentVolumeClaim(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedPersistentVolumeClaimBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedPersistentVolumeClaimEp->delete(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims`, request);
    }
    
    public remote function readCoreV1NamespacedPersistentVolumeClaim(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPersistentVolumeClaimEp->get(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedPersistentVolumeClaim(models:'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim replaceCoreV1NamespacedPersistentVolumeClaimBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedPersistentVolumeClaimEp->put(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedPersistentVolumeClaim(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedPersistentVolumeClaimBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedPersistentVolumeClaimEp->delete(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedPersistentVolumeClaim(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedPersistentVolumeClaimBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedPersistentVolumeClaimEp->patch(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}`, request);
    }
    
    public remote function readCoreV1NamespacedPersistentVolumeClaimStatus(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPersistentVolumeClaimStatusEp->get(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedPersistentVolumeClaimStatus(models:'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim replaceCoreV1NamespacedPersistentVolumeClaimStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedPersistentVolumeClaimStatusEp->put(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespacedPersistentVolumeClaimStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedPersistentVolumeClaimStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedPersistentVolumeClaimStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedPersistentVolumeClaimStatusEp->patch(string `/api/v1/namespaces/${namespace}/persistentvolumeclaims/${name}/status`, request);
    }
    
    public remote function listCoreV1NamespacedPod(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedPodEp->get(string `/api/v1/namespaces/${namespace}/pods`, message = request);
    }
    
    public remote function createCoreV1NamespacedPod(models:'io\.k8s\.api\.core\.v1\.Pod createCoreV1NamespacedPodBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedPodEp->post(string `/api/v1/namespaces/${namespace}/pods`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedPod(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedPodBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedPodEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedPodEp->delete(string `/api/v1/namespaces/${namespace}/pods`, request);
    }
    
    public remote function readCoreV1NamespacedPod(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPodEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedPod(models:'io\.k8s\.api\.core\.v1\.Pod replaceCoreV1NamespacedPodBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedPodEp->put(string `/api/v1/namespaces/${namespace}/pods/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedPod(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedPodBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedPodEp->delete(string `/api/v1/namespaces/${namespace}/pods/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedPod(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedPodBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedPodEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedPodEp->patch(string `/api/v1/namespaces/${namespace}/pods/${name}`, request);
    }
    
    public remote function connectCoreV1GetNamespacedPodAttach(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedPodAttachEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedPodAttachEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/attach`, message = request);
    }
    
    public remote function connectCoreV1PostNamespacedPodAttach(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedPodAttachEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedPodAttachEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/attach`, request);
    }
    
    public remote function createCoreV1NamespacedPodBinding(models:'io\.k8s\.api\.core\.v1\.Binding createCoreV1NamespacedPodBindingBody, string name, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedPodBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedPodBindingEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/binding`, request);
    }
    
    public remote function createCoreV1NamespacedPodEviction(models:'io\.k8s\.api\.policy\.v1beta1\.Eviction createCoreV1NamespacedPodEvictionBody, string name, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedPodEvictionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedPodEvictionEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/eviction`, request);
    }
    
    public remote function connectCoreV1GetNamespacedPodExec(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedPodExecEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedPodExecEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/exec`, message = request);
    }
    
    public remote function connectCoreV1PostNamespacedPodExec(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedPodExecEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedPodExecEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/exec`, request);
    }
    
    public remote function readCoreV1NamespacedPodLog(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPodLogEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPodLogEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/log`, message = request);
    }
    
    public remote function connectCoreV1GetNamespacedPodPortforward(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedPodPortforwardEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedPodPortforwardEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/portforward`, message = request);
    }
    
    public remote function connectCoreV1PostNamespacedPodPortforward(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedPodPortforwardEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedPodPortforwardEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/portforward`, request);
    }
    
    public remote function connectCoreV1GetNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedPodProxyEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1PutNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PutNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNamespacedPodProxyEp->put(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PostNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedPodProxyEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1DeleteNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1DeleteNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNamespacedPodProxyEp->delete(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PatchNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PatchNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNamespacedPodProxyEp->patch(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1HeadNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1HeadNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNamespacedPodProxyEp->head(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1OptionsNamespacedPodProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1OptionsNamespacedPodProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNamespacedPodProxyEp->options(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1GetNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedPodProxyWithPathEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1PutNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PutNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNamespacedPodProxyWithPathEp->put(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PostNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedPodProxyWithPathEp->post(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1DeleteNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1DeleteNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNamespacedPodProxyWithPathEp->delete(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PatchNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PatchNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNamespacedPodProxyWithPathEp->patch(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1HeadNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1HeadNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNamespacedPodProxyWithPathEp->head(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1OptionsNamespacedPodProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1OptionsNamespacedPodProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNamespacedPodProxyWithPathEp->options(string `/api/v1/namespaces/${namespace}/pods/${name}/proxy/${path}`, message = request);
    }
    
    public remote function readCoreV1NamespacedPodStatus(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPodStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPodStatusEp->get(string `/api/v1/namespaces/${namespace}/pods/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedPodStatus(models:'io\.k8s\.api\.core\.v1\.Pod replaceCoreV1NamespacedPodStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedPodStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedPodStatusEp->put(string `/api/v1/namespaces/${namespace}/pods/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespacedPodStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedPodStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedPodStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedPodStatusEp->patch(string `/api/v1/namespaces/${namespace}/pods/${name}/status`, request);
    }
    
    public remote function listCoreV1NamespacedPodTemplate(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedPodTemplateEp->get(string `/api/v1/namespaces/${namespace}/podtemplates`, message = request);
    }
    
    public remote function createCoreV1NamespacedPodTemplate(models:'io\.k8s\.api\.core\.v1\.PodTemplate createCoreV1NamespacedPodTemplateBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedPodTemplateEp->post(string `/api/v1/namespaces/${namespace}/podtemplates`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedPodTemplate(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedPodTemplateBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedPodTemplateEp->delete(string `/api/v1/namespaces/${namespace}/podtemplates`, request);
    }
    
    public remote function readCoreV1NamespacedPodTemplate(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedPodTemplateEp->get(string `/api/v1/namespaces/${namespace}/podtemplates/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedPodTemplate(models:'io\.k8s\.api\.core\.v1\.PodTemplate replaceCoreV1NamespacedPodTemplateBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedPodTemplateEp->put(string `/api/v1/namespaces/${namespace}/podtemplates/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedPodTemplate(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedPodTemplateBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedPodTemplateEp->delete(string `/api/v1/namespaces/${namespace}/podtemplates/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedPodTemplate(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedPodTemplateBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedPodTemplateEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedPodTemplateEp->patch(string `/api/v1/namespaces/${namespace}/podtemplates/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedReplicationController(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedReplicationControllerEp->get(string `/api/v1/namespaces/${namespace}/replicationcontrollers`, message = request);
    }
    
    public remote function createCoreV1NamespacedReplicationController(models:'io\.k8s\.api\.core\.v1\.ReplicationController createCoreV1NamespacedReplicationControllerBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedReplicationControllerEp->post(string `/api/v1/namespaces/${namespace}/replicationcontrollers`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedReplicationController(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedReplicationControllerBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedReplicationControllerEp->delete(string `/api/v1/namespaces/${namespace}/replicationcontrollers`, request);
    }
    
    public remote function readCoreV1NamespacedReplicationController(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedReplicationControllerEp->get(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedReplicationController(models:'io\.k8s\.api\.core\.v1\.ReplicationController replaceCoreV1NamespacedReplicationControllerBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedReplicationControllerEp->put(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedReplicationController(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedReplicationControllerBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedReplicationControllerEp->delete(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedReplicationController(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedReplicationControllerBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedReplicationControllerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedReplicationControllerEp->patch(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}`, request);
    }
    
    public remote function readCoreV1NamespacedReplicationControllerScale(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedReplicationControllerScaleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedReplicationControllerScaleEp->get(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/scale`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedReplicationControllerScale(models:'io\.k8s\.api\.autoscaling\.v1\.Scale replaceCoreV1NamespacedReplicationControllerScaleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedReplicationControllerScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedReplicationControllerScaleEp->put(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/scale`, request);
    }
    
    public remote function patchCoreV1NamespacedReplicationControllerScale(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedReplicationControllerScaleBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedReplicationControllerScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedReplicationControllerScaleEp->patch(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/scale`, request);
    }
    
    public remote function readCoreV1NamespacedReplicationControllerStatus(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedReplicationControllerStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedReplicationControllerStatusEp->get(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedReplicationControllerStatus(models:'io\.k8s\.api\.core\.v1\.ReplicationController replaceCoreV1NamespacedReplicationControllerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedReplicationControllerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedReplicationControllerStatusEp->put(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespacedReplicationControllerStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedReplicationControllerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedReplicationControllerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedReplicationControllerStatusEp->patch(string `/api/v1/namespaces/${namespace}/replicationcontrollers/${name}/status`, request);
    }
    
    public remote function listCoreV1NamespacedResourceQuota(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedResourceQuotaEp->get(string `/api/v1/namespaces/${namespace}/resourcequotas`, message = request);
    }
    
    public remote function createCoreV1NamespacedResourceQuota(models:'io\.k8s\.api\.core\.v1\.ResourceQuota createCoreV1NamespacedResourceQuotaBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedResourceQuotaEp->post(string `/api/v1/namespaces/${namespace}/resourcequotas`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedResourceQuota(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedResourceQuotaBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedResourceQuotaEp->delete(string `/api/v1/namespaces/${namespace}/resourcequotas`, request);
    }
    
    public remote function readCoreV1NamespacedResourceQuota(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedResourceQuotaEp->get(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedResourceQuota(models:'io\.k8s\.api\.core\.v1\.ResourceQuota replaceCoreV1NamespacedResourceQuotaBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedResourceQuotaEp->put(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedResourceQuota(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedResourceQuotaBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedResourceQuotaEp->delete(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedResourceQuota(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedResourceQuotaBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedResourceQuotaEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedResourceQuotaEp->patch(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}`, request);
    }
    
    public remote function readCoreV1NamespacedResourceQuotaStatus(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedResourceQuotaStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedResourceQuotaStatusEp->get(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedResourceQuotaStatus(models:'io\.k8s\.api\.core\.v1\.ResourceQuota replaceCoreV1NamespacedResourceQuotaStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedResourceQuotaStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedResourceQuotaStatusEp->put(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespacedResourceQuotaStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedResourceQuotaStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedResourceQuotaStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedResourceQuotaStatusEp->patch(string `/api/v1/namespaces/${namespace}/resourcequotas/${name}/status`, request);
    }
    
    public remote function listCoreV1NamespacedSecret(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedSecretEp->get(string `/api/v1/namespaces/${namespace}/secrets`, message = request);
    }
    
    public remote function createCoreV1NamespacedSecret(models:'io\.k8s\.api\.core\.v1\.Secret createCoreV1NamespacedSecretBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedSecretEp->post(string `/api/v1/namespaces/${namespace}/secrets`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedSecret(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedSecretBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedSecretEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedSecretEp->delete(string `/api/v1/namespaces/${namespace}/secrets`, request);
    }
    
    public remote function readCoreV1NamespacedSecret(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedSecretEp->get(string `/api/v1/namespaces/${namespace}/secrets/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedSecret(models:'io\.k8s\.api\.core\.v1\.Secret replaceCoreV1NamespacedSecretBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedSecretEp->put(string `/api/v1/namespaces/${namespace}/secrets/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedSecret(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedSecretBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedSecretEp->delete(string `/api/v1/namespaces/${namespace}/secrets/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedSecret(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedSecretBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedSecretEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedSecretEp->patch(string `/api/v1/namespaces/${namespace}/secrets/${name}`, request);
    }
    
    public remote function listCoreV1NamespacedServiceAccount(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedServiceAccountEp->get(string `/api/v1/namespaces/${namespace}/serviceaccounts`, message = request);
    }
    
    public remote function createCoreV1NamespacedServiceAccount(models:'io\.k8s\.api\.core\.v1\.ServiceAccount createCoreV1NamespacedServiceAccountBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedServiceAccountEp->post(string `/api/v1/namespaces/${namespace}/serviceaccounts`, request);
    }
    
    public remote function deleteCoreV1CollectionNamespacedServiceAccount(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNamespacedServiceAccountBody, string namespace) returns http:Response | error {
        http:Client deleteCoreV1CollectionNamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNamespacedServiceAccountEp->delete(string `/api/v1/namespaces/${namespace}/serviceaccounts`, request);
    }
    
    public remote function readCoreV1NamespacedServiceAccount(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedServiceAccountEp->get(string `/api/v1/namespaces/${namespace}/serviceaccounts/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedServiceAccount(models:'io\.k8s\.api\.core\.v1\.ServiceAccount replaceCoreV1NamespacedServiceAccountBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedServiceAccountEp->put(string `/api/v1/namespaces/${namespace}/serviceaccounts/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedServiceAccount(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedServiceAccountBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedServiceAccountEp->delete(string `/api/v1/namespaces/${namespace}/serviceaccounts/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedServiceAccount(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedServiceAccountBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedServiceAccountEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedServiceAccountEp->patch(string `/api/v1/namespaces/${namespace}/serviceaccounts/${name}`, request);
    }
    
    public remote function createCoreV1NamespacedServiceAccountToken(models:'io\.k8s\.api\.authentication\.v1\.TokenRequest createCoreV1NamespacedServiceAccountTokenBody, string name, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedServiceAccountTokenEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedServiceAccountTokenEp->post(string `/api/v1/namespaces/${namespace}/serviceaccounts/${name}/token`, request);
    }
    
    public remote function listCoreV1NamespacedService(string namespace) returns http:Response | error {
        http:Client listCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NamespacedServiceEp->get(string `/api/v1/namespaces/${namespace}/services`, message = request);
    }
    
    public remote function createCoreV1NamespacedService(models:'io\.k8s\.api\.core\.v1\.Service createCoreV1NamespacedServiceBody, string namespace) returns http:Response | error {
        http:Client createCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NamespacedServiceEp->post(string `/api/v1/namespaces/${namespace}/services`, request);
    }
    
    public remote function readCoreV1NamespacedService(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedServiceEp->get(string `/api/v1/namespaces/${namespace}/services/${name}`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedService(models:'io\.k8s\.api\.core\.v1\.Service replaceCoreV1NamespacedServiceBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedServiceEp->put(string `/api/v1/namespaces/${namespace}/services/${name}`, request);
    }
    
    public remote function deleteCoreV1NamespacedService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespacedServiceBody, string name, string namespace) returns http:Response | error {
        http:Client deleteCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespacedServiceEp->delete(string `/api/v1/namespaces/${namespace}/services/${name}`, request);
    }
    
    public remote function patchCoreV1NamespacedService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedServiceBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedServiceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedServiceEp->patch(string `/api/v1/namespaces/${namespace}/services/${name}`, request);
    }
    
    public remote function connectCoreV1GetNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedServiceProxyEp->get(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1PutNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PutNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNamespacedServiceProxyEp->put(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PostNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedServiceProxyEp->post(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1DeleteNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1DeleteNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNamespacedServiceProxyEp->delete(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PatchNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1PatchNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNamespacedServiceProxyEp->patch(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1HeadNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1HeadNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNamespacedServiceProxyEp->head(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1OptionsNamespacedServiceProxy(string name, string namespace) returns http:Response | error {
        http:Client connectCoreV1OptionsNamespacedServiceProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNamespacedServiceProxyEp->options(string `/api/v1/namespaces/${namespace}/services/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1GetNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1GetNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNamespacedServiceProxyWithPathEp->get(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1PutNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PutNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNamespacedServiceProxyWithPathEp->put(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PostNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PostNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNamespacedServiceProxyWithPathEp->post(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1DeleteNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1DeleteNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNamespacedServiceProxyWithPathEp->delete(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PatchNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1PatchNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNamespacedServiceProxyWithPathEp->patch(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1HeadNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1HeadNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNamespacedServiceProxyWithPathEp->head(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1OptionsNamespacedServiceProxyWithPath(string name, string namespace, string path) returns http:Response | error {
        http:Client connectCoreV1OptionsNamespacedServiceProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNamespacedServiceProxyWithPathEp->options(string `/api/v1/namespaces/${namespace}/services/${name}/proxy/${path}`, message = request);
    }
    
    public remote function readCoreV1NamespacedServiceStatus(string name, string namespace) returns http:Response | error {
        http:Client readCoreV1NamespacedServiceStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespacedServiceStatusEp->get(string `/api/v1/namespaces/${namespace}/services/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespacedServiceStatus(models:'io\.k8s\.api\.core\.v1\.Service replaceCoreV1NamespacedServiceStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceCoreV1NamespacedServiceStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespacedServiceStatusEp->put(string `/api/v1/namespaces/${namespace}/services/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespacedServiceStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespacedServiceStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchCoreV1NamespacedServiceStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespacedServiceStatusEp->patch(string `/api/v1/namespaces/${namespace}/services/${name}/status`, request);
    }
    
    public remote function readCoreV1Namespace(string name) returns http:Response | error {
        http:Client readCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespaceEp->get(string `/api/v1/namespaces/${name}`, message = request);
    }
    
    public remote function replaceCoreV1Namespace(models:'io\.k8s\.api\.core\.v1\.Namespace replaceCoreV1NamespaceBody, string name) returns http:Response | error {
        http:Client replaceCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespaceEp->put(string `/api/v1/namespaces/${name}`, request);
    }
    
    public remote function deleteCoreV1Namespace(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NamespaceBody, string name) returns http:Response | error {
        http:Client deleteCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NamespaceEp->delete(string `/api/v1/namespaces/${name}`, request);
    }
    
    public remote function patchCoreV1Namespace(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespaceBody, string name) returns http:Response | error {
        http:Client patchCoreV1NamespaceEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespaceEp->patch(string `/api/v1/namespaces/${name}`, request);
    }
    
    public remote function replaceCoreV1NamespaceFinalize(models:'io\.k8s\.api\.core\.v1\.Namespace replaceCoreV1NamespaceFinalizeBody, string name) returns http:Response | error {
        http:Client replaceCoreV1NamespaceFinalizeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespaceFinalizeEp->put(string `/api/v1/namespaces/${name}/finalize`, request);
    }
    
    public remote function readCoreV1NamespaceStatus(string name) returns http:Response | error {
        http:Client readCoreV1NamespaceStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NamespaceStatusEp->get(string `/api/v1/namespaces/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NamespaceStatus(models:'io\.k8s\.api\.core\.v1\.Namespace replaceCoreV1NamespaceStatusBody, string name) returns http:Response | error {
        http:Client replaceCoreV1NamespaceStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NamespaceStatusEp->put(string `/api/v1/namespaces/${name}/status`, request);
    }
    
    public remote function patchCoreV1NamespaceStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NamespaceStatusBody, string name) returns http:Response | error {
        http:Client patchCoreV1NamespaceStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NamespaceStatusEp->patch(string `/api/v1/namespaces/${name}/status`, request);
    }
    
    public remote function listCoreV1Node() returns http:Response | error {
        http:Client listCoreV1NodeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1NodeEp->get("/api/v1/nodes", message = request);
    }
    
    public remote function createCoreV1Node(models:'io\.k8s\.api\.core\.v1\.Node createCoreV1NodeBody) returns http:Response | error {
        http:Client createCoreV1NodeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1NodeEp->post("/api/v1/nodes", request);
    }
    
    public remote function deleteCoreV1CollectionNode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionNodeBody) returns http:Response | error {
        http:Client deleteCoreV1CollectionNodeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionNodeEp->delete("/api/v1/nodes", request);
    }
    
    public remote function readCoreV1Node(string name) returns http:Response | error {
        http:Client readCoreV1NodeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NodeEp->get(string `/api/v1/nodes/${name}`, message = request);
    }
    
    public remote function replaceCoreV1Node(models:'io\.k8s\.api\.core\.v1\.Node replaceCoreV1NodeBody, string name) returns http:Response | error {
        http:Client replaceCoreV1NodeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NodeEp->put(string `/api/v1/nodes/${name}`, request);
    }
    
    public remote function deleteCoreV1Node(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1NodeBody, string name) returns http:Response | error {
        http:Client deleteCoreV1NodeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1NodeEp->delete(string `/api/v1/nodes/${name}`, request);
    }
    
    public remote function patchCoreV1Node(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NodeBody, string name) returns http:Response | error {
        http:Client patchCoreV1NodeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NodeEp->patch(string `/api/v1/nodes/${name}`, request);
    }
    
    public remote function connectCoreV1GetNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1GetNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNodeProxyEp->get(string `/api/v1/nodes/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1PutNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1PutNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNodeProxyEp->put(string `/api/v1/nodes/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PostNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1PostNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNodeProxyEp->post(string `/api/v1/nodes/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1DeleteNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1DeleteNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNodeProxyEp->delete(string `/api/v1/nodes/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1PatchNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1PatchNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNodeProxyEp->patch(string `/api/v1/nodes/${name}/proxy`, request);
    }
    
    public remote function connectCoreV1HeadNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1HeadNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNodeProxyEp->head(string `/api/v1/nodes/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1OptionsNodeProxy(string name) returns http:Response | error {
        http:Client connectCoreV1OptionsNodeProxyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNodeProxyEp->options(string `/api/v1/nodes/${name}/proxy`, message = request);
    }
    
    public remote function connectCoreV1GetNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1GetNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1GetNodeProxyWithPathEp->get(string `/api/v1/nodes/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1PutNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1PutNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PutNodeProxyWithPathEp->put(string `/api/v1/nodes/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PostNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1PostNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PostNodeProxyWithPathEp->post(string `/api/v1/nodes/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1DeleteNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1DeleteNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1DeleteNodeProxyWithPathEp->delete(string `/api/v1/nodes/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1PatchNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1PatchNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1PatchNodeProxyWithPathEp->patch(string `/api/v1/nodes/${name}/proxy/${path}`, request);
    }
    
    public remote function connectCoreV1HeadNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1HeadNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1HeadNodeProxyWithPathEp->head(string `/api/v1/nodes/${name}/proxy/${path}`, message = request);
    }
    
    public remote function connectCoreV1OptionsNodeProxyWithPath(string name, string path) returns http:Response | error {
        http:Client connectCoreV1OptionsNodeProxyWithPathEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check connectCoreV1OptionsNodeProxyWithPathEp->options(string `/api/v1/nodes/${name}/proxy/${path}`, message = request);
    }
    
    public remote function readCoreV1NodeStatus(string name) returns http:Response | error {
        http:Client readCoreV1NodeStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1NodeStatusEp->get(string `/api/v1/nodes/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1NodeStatus(models:'io\.k8s\.api\.core\.v1\.Node replaceCoreV1NodeStatusBody, string name) returns http:Response | error {
        http:Client replaceCoreV1NodeStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1NodeStatusEp->put(string `/api/v1/nodes/${name}/status`, request);
    }
    
    public remote function patchCoreV1NodeStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1NodeStatusBody, string name) returns http:Response | error {
        http:Client patchCoreV1NodeStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1NodeStatusEp->patch(string `/api/v1/nodes/${name}/status`, request);
    }
    
    public remote function listCoreV1PersistentVolumeClaimForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1PersistentVolumeClaimForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1PersistentVolumeClaimForAllNamespacesEp->get("/api/v1/persistentvolumeclaims", message = request);
    }
    
    public remote function listCoreV1PersistentVolume() returns http:Response | error {
        http:Client listCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1PersistentVolumeEp->get("/api/v1/persistentvolumes", message = request);
    }
    
    public remote function createCoreV1PersistentVolume(models:'io\.k8s\.api\.core\.v1\.PersistentVolume createCoreV1PersistentVolumeBody) returns http:Response | error {
        http:Client createCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createCoreV1PersistentVolumeEp->post("/api/v1/persistentvolumes", request);
    }
    
    public remote function deleteCoreV1CollectionPersistentVolume(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1CollectionPersistentVolumeBody) returns http:Response | error {
        http:Client deleteCoreV1CollectionPersistentVolumeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1CollectionPersistentVolumeEp->delete("/api/v1/persistentvolumes", request);
    }
    
    public remote function readCoreV1PersistentVolume(string name) returns http:Response | error {
        http:Client readCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1PersistentVolumeEp->get(string `/api/v1/persistentvolumes/${name}`, message = request);
    }
    
    public remote function replaceCoreV1PersistentVolume(models:'io\.k8s\.api\.core\.v1\.PersistentVolume replaceCoreV1PersistentVolumeBody, string name) returns http:Response | error {
        http:Client replaceCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1PersistentVolumeEp->put(string `/api/v1/persistentvolumes/${name}`, request);
    }
    
    public remote function deleteCoreV1PersistentVolume(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoreV1PersistentVolumeBody, string name) returns http:Response | error {
        http:Client deleteCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteCoreV1PersistentVolumeEp->delete(string `/api/v1/persistentvolumes/${name}`, request);
    }
    
    public remote function patchCoreV1PersistentVolume(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1PersistentVolumeBody, string name) returns http:Response | error {
        http:Client patchCoreV1PersistentVolumeEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1PersistentVolumeEp->patch(string `/api/v1/persistentvolumes/${name}`, request);
    }
    
    public remote function readCoreV1PersistentVolumeStatus(string name) returns http:Response | error {
        http:Client readCoreV1PersistentVolumeStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readCoreV1PersistentVolumeStatusEp->get(string `/api/v1/persistentvolumes/${name}/status`, message = request);
    }
    
    public remote function replaceCoreV1PersistentVolumeStatus(models:'io\.k8s\.api\.core\.v1\.PersistentVolume replaceCoreV1PersistentVolumeStatusBody, string name) returns http:Response | error {
        http:Client replaceCoreV1PersistentVolumeStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceCoreV1PersistentVolumeStatusEp->put(string `/api/v1/persistentvolumes/${name}/status`, request);
    }
    
    public remote function patchCoreV1PersistentVolumeStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoreV1PersistentVolumeStatusBody, string name) returns http:Response | error {
        http:Client patchCoreV1PersistentVolumeStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchCoreV1PersistentVolumeStatusEp->patch(string `/api/v1/persistentvolumes/${name}/status`, request);
    }
    
    public remote function listCoreV1PodForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1PodForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1PodForAllNamespacesEp->get("/api/v1/pods", message = request);
    }
    
    public remote function listCoreV1PodTemplateForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1PodTemplateForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1PodTemplateForAllNamespacesEp->get("/api/v1/podtemplates", message = request);
    }
    
    public remote function listCoreV1ReplicationControllerForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1ReplicationControllerForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ReplicationControllerForAllNamespacesEp->get("/api/v1/replicationcontrollers", message = request);
    }
    
    public remote function listCoreV1ResourceQuotaForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1ResourceQuotaForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ResourceQuotaForAllNamespacesEp->get("/api/v1/resourcequotas", message = request);
    }
    
    public remote function listCoreV1SecretForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1SecretForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1SecretForAllNamespacesEp->get("/api/v1/secrets", message = request);
    }
    
    public remote function listCoreV1ServiceAccountForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1ServiceAccountForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ServiceAccountForAllNamespacesEp->get("/api/v1/serviceaccounts", message = request);
    }
    
    public remote function listCoreV1ServiceForAllNamespaces() returns http:Response | error {
        http:Client listCoreV1ServiceForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listCoreV1ServiceForAllNamespacesEp->get("/api/v1/services", message = request);
    }
    
    // public remote function watchCoreV1ConfigMapListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1ConfigMapListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1ConfigMapListForAllNamespacesEp->get("/api/v1/watch/configmaps", message = request);
    // }
    
    // public remote function watchCoreV1EndpointsListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1EndpointsListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1EndpointsListForAllNamespacesEp->get("/api/v1/watch/endpoints", message = request);
    // }
    
    // public remote function watchCoreV1EventListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1EventListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1EventListForAllNamespacesEp->get("/api/v1/watch/events", message = request);
    // }
    
    // public remote function watchCoreV1LimitRangeListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1LimitRangeListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1LimitRangeListForAllNamespacesEp->get("/api/v1/watch/limitranges", message = request);
    // }
    
    // public remote function watchCoreV1NamespaceList() returns http:Response | error {
    //     http:Client watchCoreV1NamespaceListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespaceListEp->get("/api/v1/watch/namespaces", message = request);
    // }
    
    // public remote function watchCoreV1NamespacedConfigMapList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedConfigMapListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedConfigMapListEp->get(string `/api/v1/watch/namespaces/${namespace}/configmaps`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedConfigMap(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedConfigMapEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedConfigMapEp->get(string `/api/v1/watch/namespaces/${namespace}/configmaps/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedEndpointsList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedEndpointsListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedEndpointsListEp->get(string `/api/v1/watch/namespaces/${namespace}/endpoints`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedEndpoints(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedEndpointsEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedEndpointsEp->get(string `/api/v1/watch/namespaces/${namespace}/endpoints/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedEventList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedEventListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedEventListEp->get(string `/api/v1/watch/namespaces/${namespace}/events`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedEvent(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedEventEp->get(string `/api/v1/watch/namespaces/${namespace}/events/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedLimitRangeList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedLimitRangeListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedLimitRangeListEp->get(string `/api/v1/watch/namespaces/${namespace}/limitranges`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedLimitRange(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedLimitRangeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedLimitRangeEp->get(string `/api/v1/watch/namespaces/${namespace}/limitranges/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPersistentVolumeClaimList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPersistentVolumeClaimListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPersistentVolumeClaimListEp->get(string `/api/v1/watch/namespaces/${namespace}/persistentvolumeclaims`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPersistentVolumeClaim(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPersistentVolumeClaimEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPersistentVolumeClaimEp->get(string `/api/v1/watch/namespaces/${namespace}/persistentvolumeclaims/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPodList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPodListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPodListEp->get(string `/api/v1/watch/namespaces/${namespace}/pods`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPod(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPodEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPodEp->get(string `/api/v1/watch/namespaces/${namespace}/pods/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPodTemplateList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPodTemplateListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPodTemplateListEp->get(string `/api/v1/watch/namespaces/${namespace}/podtemplates`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedPodTemplate(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedPodTemplateEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedPodTemplateEp->get(string `/api/v1/watch/namespaces/${namespace}/podtemplates/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedReplicationControllerList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedReplicationControllerListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedReplicationControllerListEp->get(string `/api/v1/watch/namespaces/${namespace}/replicationcontrollers`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedReplicationController(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedReplicationControllerEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedReplicationControllerEp->get(string `/api/v1/watch/namespaces/${namespace}/replicationcontrollers/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedResourceQuotaList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedResourceQuotaListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedResourceQuotaListEp->get(string `/api/v1/watch/namespaces/${namespace}/resourcequotas`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedResourceQuota(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedResourceQuotaEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedResourceQuotaEp->get(string `/api/v1/watch/namespaces/${namespace}/resourcequotas/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedSecretList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedSecretListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedSecretListEp->get(string `/api/v1/watch/namespaces/${namespace}/secrets`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedSecret(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedSecretEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedSecretEp->get(string `/api/v1/watch/namespaces/${namespace}/secrets/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedServiceAccountList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedServiceAccountListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedServiceAccountListEp->get(string `/api/v1/watch/namespaces/${namespace}/serviceaccounts`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedServiceAccount(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedServiceAccountEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedServiceAccountEp->get(string `/api/v1/watch/namespaces/${namespace}/serviceaccounts/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedServiceList(string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedServiceListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedServiceListEp->get(string `/api/v1/watch/namespaces/${namespace}/services`, message = request);
    // }
    
    // public remote function watchCoreV1NamespacedService(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoreV1NamespacedServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespacedServiceEp->get(string `/api/v1/watch/namespaces/${namespace}/services/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1Namespace(string name) returns http:Response | error {
    //     http:Client watchCoreV1NamespaceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NamespaceEp->get(string `/api/v1/watch/namespaces/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1NodeList() returns http:Response | error {
    //     http:Client watchCoreV1NodeListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NodeListEp->get("/api/v1/watch/nodes", message = request);
    // }
    
    // public remote function watchCoreV1Node(string name) returns http:Response | error {
    //     http:Client watchCoreV1NodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1NodeEp->get(string `/api/v1/watch/nodes/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1PersistentVolumeClaimListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1PersistentVolumeClaimListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1PersistentVolumeClaimListForAllNamespacesEp->get("/api/v1/watch/persistentvolumeclaims", message = request);
    // }
    
    // public remote function watchCoreV1PersistentVolumeList() returns http:Response | error {
    //     http:Client watchCoreV1PersistentVolumeListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1PersistentVolumeListEp->get("/api/v1/watch/persistentvolumes", message = request);
    // }
    
    // public remote function watchCoreV1PersistentVolume(string name) returns http:Response | error {
    //     http:Client watchCoreV1PersistentVolumeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1PersistentVolumeEp->get(string `/api/v1/watch/persistentvolumes/${name}`, message = request);
    // }
    
    // public remote function watchCoreV1PodListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1PodListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1PodListForAllNamespacesEp->get("/api/v1/watch/pods", message = request);
    // }
    
    // public remote function watchCoreV1PodTemplateListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1PodTemplateListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1PodTemplateListForAllNamespacesEp->get("/api/v1/watch/podtemplates", message = request);
    // }
    
    // public remote function watchCoreV1ReplicationControllerListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1ReplicationControllerListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1ReplicationControllerListForAllNamespacesEp->get("/api/v1/watch/replicationcontrollers", message = request);
    // }
    
    // public remote function watchCoreV1ResourceQuotaListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1ResourceQuotaListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1ResourceQuotaListForAllNamespacesEp->get("/api/v1/watch/resourcequotas", message = request);
    // }
    
    // public remote function watchCoreV1SecretListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1SecretListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1SecretListForAllNamespacesEp->get("/api/v1/watch/secrets", message = request);
    // }
    
    // public remote function watchCoreV1ServiceAccountListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1ServiceAccountListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1ServiceAccountListForAllNamespacesEp->get("/api/v1/watch/serviceaccounts", message = request);
    // }
    
    // public remote function watchCoreV1ServiceListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoreV1ServiceListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoreV1ServiceListForAllNamespacesEp->get("/api/v1/watch/services", message = request);
    // }
    
    // public remote function getAPIVersions() returns http:Response | error {
    //     http:Client getAPIVersionsEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAPIVersionsEp->get("/apis/", message = request);
    // }
    
    // public remote function getAdmissionregistrationAPIGroup() returns http:Response | error {
    //     http:Client getAdmissionregistrationAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAdmissionregistrationAPIGroupEp->get("/apis/admissionregistration.k8s.io/", message = request);
    // }
    
    // public remote function getAdmissionregistrationV1APIResources() returns http:Response | error {
    //     http:Client getAdmissionregistrationV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAdmissionregistrationV1APIResourcesEp->get("/apis/admissionregistration.k8s.io/v1/", message = request);
    // }
    
    // public remote function listAdmissionregistrationV1MutatingWebhookConfiguration() returns http:Response | error {
    //     http:Client listAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listAdmissionregistrationV1MutatingWebhookConfigurationEp->get("/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations", message = request);
    // }
    
    // public remote function createAdmissionregistrationV1MutatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhookConfiguration createAdmissionregistrationV1MutatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client createAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAdmissionregistrationV1MutatingWebhookConfigurationEp->post("/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations", request);
    // }
    
    // public remote function deleteAdmissionregistrationV1CollectionMutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1CollectionMutatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1CollectionMutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1CollectionMutatingWebhookConfigurationEp->delete("/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations", request);
    // }
    
    // public remote function readAdmissionregistrationV1MutatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client readAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readAdmissionregistrationV1MutatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function replaceAdmissionregistrationV1MutatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhookConfiguration replaceAdmissionregistrationV1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client replaceAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceAdmissionregistrationV1MutatingWebhookConfigurationEp->put(string `/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function deleteAdmissionregistrationV1MutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1MutatingWebhookConfigurationEp->delete(string `/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function patchAdmissionregistrationV1MutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAdmissionregistrationV1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client patchAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchAdmissionregistrationV1MutatingWebhookConfigurationEp->patch(string `/apis/admissionregistration.k8s.io/v1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function listAdmissionregistrationV1ValidatingWebhookConfiguration() returns http:Response | error {
    //     http:Client listAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listAdmissionregistrationV1ValidatingWebhookConfigurationEp->get("/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations", message = request);
    // }
    
    // public remote function createAdmissionregistrationV1ValidatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhookConfiguration createAdmissionregistrationV1ValidatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client createAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAdmissionregistrationV1ValidatingWebhookConfigurationEp->post("/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations", request);
    // }
    
    // public remote function deleteAdmissionregistrationV1CollectionValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1CollectionValidatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1CollectionValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1CollectionValidatingWebhookConfigurationEp->delete("/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations", request);
    // }
    
    // public remote function readAdmissionregistrationV1ValidatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client readAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readAdmissionregistrationV1ValidatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function replaceAdmissionregistrationV1ValidatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhookConfiguration replaceAdmissionregistrationV1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client replaceAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceAdmissionregistrationV1ValidatingWebhookConfigurationEp->put(string `/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function deleteAdmissionregistrationV1ValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1ValidatingWebhookConfigurationEp->delete(string `/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function patchAdmissionregistrationV1ValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAdmissionregistrationV1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client patchAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchAdmissionregistrationV1ValidatingWebhookConfigurationEp->patch(string `/apis/admissionregistration.k8s.io/v1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function watchAdmissionregistrationV1MutatingWebhookConfigurationList() returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1MutatingWebhookConfigurationListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1MutatingWebhookConfigurationListEp->get("/apis/admissionregistration.k8s.io/v1/watch/mutatingwebhookconfigurations", message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1MutatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1MutatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1/watch/mutatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1ValidatingWebhookConfigurationList() returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1ValidatingWebhookConfigurationListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1ValidatingWebhookConfigurationListEp->get("/apis/admissionregistration.k8s.io/v1/watch/validatingwebhookconfigurations", message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1ValidatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1ValidatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1/watch/validatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function getAdmissionregistrationV1beta1APIResources() returns http:Response | error {
    //     http:Client getAdmissionregistrationV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAdmissionregistrationV1beta1APIResourcesEp->get("/apis/admissionregistration.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listAdmissionregistrationV1beta1MutatingWebhookConfiguration() returns http:Response | error {
    //     http:Client listAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get("/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", message = request);
    // }
    
    // public remote function createAdmissionregistrationV1beta1MutatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhookConfiguration createAdmissionregistrationV1beta1MutatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client createAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->post("/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", request);
    // }
    
    // public remote function deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1beta1CollectionMutatingWebhookConfigurationEp->delete("/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations", request);
    // }
    
    // public remote function readAdmissionregistrationV1beta1MutatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client readAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function replaceAdmissionregistrationV1beta1MutatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhookConfiguration replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->put(string `/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function deleteAdmissionregistrationV1beta1MutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->delete(string `/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function patchAdmissionregistrationV1beta1MutatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAdmissionregistrationV1beta1MutatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client patchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->patch(string `/apis/admissionregistration.k8s.io/v1beta1/mutatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function listAdmissionregistrationV1beta1ValidatingWebhookConfiguration() returns http:Response | error {
    //     http:Client listAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get("/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations", message = request);
    // }
    
    // public remote function createAdmissionregistrationV1beta1ValidatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhookConfiguration createAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client createAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->post("/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations", request);
    // }
    
    // public remote function deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfigurationBody) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1beta1CollectionValidatingWebhookConfigurationEp->delete("/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations", request);
    // }
    
    // public remote function readAdmissionregistrationV1beta1ValidatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client readAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function replaceAdmissionregistrationV1beta1ValidatingWebhookConfiguration(models:'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhookConfiguration replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->put(string `/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function deleteAdmissionregistrationV1beta1ValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->delete(string `/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function patchAdmissionregistrationV1beta1ValidatingWebhookConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationBody, string name) returns http:Response | error {
    //     http:Client patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->patch(string `/apis/admissionregistration.k8s.io/v1beta1/validatingwebhookconfigurations/${name}`, request);
    // }
    
    // public remote function watchAdmissionregistrationV1beta1MutatingWebhookConfigurationList() returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1beta1MutatingWebhookConfigurationListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1beta1MutatingWebhookConfigurationListEp->get("/apis/admissionregistration.k8s.io/v1beta1/watch/mutatingwebhookconfigurations", message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1beta1MutatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1beta1MutatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1beta1/watch/mutatingwebhookconfigurations/${name}`, message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationList() returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationListEp->get("/apis/admissionregistration.k8s.io/v1beta1/watch/validatingwebhookconfigurations", message = request);
    // }
    
    // public remote function watchAdmissionregistrationV1beta1ValidatingWebhookConfiguration(string name) returns http:Response | error {
    //     http:Client watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAdmissionregistrationV1beta1ValidatingWebhookConfigurationEp->get(string `/apis/admissionregistration.k8s.io/v1beta1/watch/validatingwebhookconfigurations/${name}`, message = request);
    // }
    
    public remote function getApiextensionsAPIGroup() returns http:Response | error {
        http:Client getApiextensionsAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getApiextensionsAPIGroupEp->get("/apis/apiextensions.k8s.io/", message = request);
    }
    
    public remote function getApiextensionsV1APIResources() returns http:Response | error {
        http:Client getApiextensionsV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getApiextensionsV1APIResourcesEp->get("/apis/apiextensions.k8s.io/v1/", message = request);
    }
    
    public remote function listApiextensionsV1CustomResourceDefinition() returns http:Response | error {
        http:Client listApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listApiextensionsV1CustomResourceDefinitionEp->get("/apis/apiextensions.k8s.io/v1/customresourcedefinitions", message = request);
    }
    
    public remote function createApiextensionsV1CustomResourceDefinition(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinition createApiextensionsV1CustomResourceDefinitionBody) returns http:Response | error {
        http:Client createApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createApiextensionsV1CustomResourceDefinitionEp->post("/apis/apiextensions.k8s.io/v1/customresourcedefinitions", request);
    }
    
    public remote function deleteApiextensionsV1CollectionCustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiextensionsV1CollectionCustomResourceDefinitionBody) returns http:Response | error {
        http:Client deleteApiextensionsV1CollectionCustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteApiextensionsV1CollectionCustomResourceDefinitionEp->delete("/apis/apiextensions.k8s.io/v1/customresourcedefinitions", request);
    }
    
    public remote function readApiextensionsV1CustomResourceDefinition(string name) returns http:Response | error {
        http:Client readApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readApiextensionsV1CustomResourceDefinitionEp->get(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}`, message = request);
    }
    
    public remote function replaceApiextensionsV1CustomResourceDefinition(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinition replaceApiextensionsV1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client replaceApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceApiextensionsV1CustomResourceDefinitionEp->put(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function deleteApiextensionsV1CustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiextensionsV1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client deleteApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteApiextensionsV1CustomResourceDefinitionEp->delete(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function patchApiextensionsV1CustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiextensionsV1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client patchApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchApiextensionsV1CustomResourceDefinitionEp->patch(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function readApiextensionsV1CustomResourceDefinitionStatus(string name) returns http:Response | error {
        http:Client readApiextensionsV1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readApiextensionsV1CustomResourceDefinitionStatusEp->get(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}/status`, message = request);
    }
    
    public remote function replaceApiextensionsV1CustomResourceDefinitionStatus(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinition replaceApiextensionsV1CustomResourceDefinitionStatusBody, string name) returns http:Response | error {
        http:Client replaceApiextensionsV1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceApiextensionsV1CustomResourceDefinitionStatusEp->put(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}/status`, request);
    }
    
    public remote function patchApiextensionsV1CustomResourceDefinitionStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiextensionsV1CustomResourceDefinitionStatusBody, string name) returns http:Response | error {
        http:Client patchApiextensionsV1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchApiextensionsV1CustomResourceDefinitionStatusEp->patch(string `/apis/apiextensions.k8s.io/v1/customresourcedefinitions/${name}/status`, request);
    }
    
    public remote function watchApiextensionsV1CustomResourceDefinitionList() returns http:Response | error {
        http:Client watchApiextensionsV1CustomResourceDefinitionListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchApiextensionsV1CustomResourceDefinitionListEp->get("/apis/apiextensions.k8s.io/v1/watch/customresourcedefinitions", message = request);
    }
    
    public remote function watchApiextensionsV1CustomResourceDefinition(string name) returns http:Response | error {
        http:Client watchApiextensionsV1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchApiextensionsV1CustomResourceDefinitionEp->get(string `/apis/apiextensions.k8s.io/v1/watch/customresourcedefinitions/${name}`, message = request);
    }
    
    public remote function getApiextensionsV1beta1APIResources() returns http:Response | error {
        http:Client getApiextensionsV1beta1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getApiextensionsV1beta1APIResourcesEp->get("/apis/apiextensions.k8s.io/v1beta1/", message = request);
    }
    
    public remote function listApiextensionsV1beta1CustomResourceDefinition() returns http:Response | error {
        http:Client listApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listApiextensionsV1beta1CustomResourceDefinitionEp->get("/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", message = request);
    }
    
    public remote function createApiextensionsV1beta1CustomResourceDefinition(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinition createApiextensionsV1beta1CustomResourceDefinitionBody) returns http:Response | error {
        http:Client createApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createApiextensionsV1beta1CustomResourceDefinitionEp->post("/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", request);
    }
    
    public remote function deleteApiextensionsV1beta1CollectionCustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiextensionsV1beta1CollectionCustomResourceDefinitionBody) returns http:Response | error {
        http:Client deleteApiextensionsV1beta1CollectionCustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteApiextensionsV1beta1CollectionCustomResourceDefinitionEp->delete("/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions", request);
    }
    
    public remote function readApiextensionsV1beta1CustomResourceDefinition(string name) returns http:Response | error {
        http:Client readApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readApiextensionsV1beta1CustomResourceDefinitionEp->get(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}`, message = request);
    }
    
    public remote function replaceApiextensionsV1beta1CustomResourceDefinition(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinition replaceApiextensionsV1beta1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client replaceApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceApiextensionsV1beta1CustomResourceDefinitionEp->put(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function deleteApiextensionsV1beta1CustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiextensionsV1beta1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client deleteApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteApiextensionsV1beta1CustomResourceDefinitionEp->delete(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function patchApiextensionsV1beta1CustomResourceDefinition(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiextensionsV1beta1CustomResourceDefinitionBody, string name) returns http:Response | error {
        http:Client patchApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchApiextensionsV1beta1CustomResourceDefinitionEp->patch(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}`, request);
    }
    
    public remote function readApiextensionsV1beta1CustomResourceDefinitionStatus(string name) returns http:Response | error {
        http:Client readApiextensionsV1beta1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readApiextensionsV1beta1CustomResourceDefinitionStatusEp->get(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}/status`, message = request);
    }
    
    public remote function replaceApiextensionsV1beta1CustomResourceDefinitionStatus(models:'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinition replaceApiextensionsV1beta1CustomResourceDefinitionStatusBody, string name) returns http:Response | error {
        http:Client replaceApiextensionsV1beta1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceApiextensionsV1beta1CustomResourceDefinitionStatusEp->put(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}/status`, request);
    }
    
    public remote function patchApiextensionsV1beta1CustomResourceDefinitionStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiextensionsV1beta1CustomResourceDefinitionStatusBody, string name) returns http:Response | error {
        http:Client patchApiextensionsV1beta1CustomResourceDefinitionStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchApiextensionsV1beta1CustomResourceDefinitionStatusEp->patch(string `/apis/apiextensions.k8s.io/v1beta1/customresourcedefinitions/${name}/status`, request);
    }
    
    public remote function watchApiextensionsV1beta1CustomResourceDefinitionList() returns http:Response | error {
        http:Client watchApiextensionsV1beta1CustomResourceDefinitionListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchApiextensionsV1beta1CustomResourceDefinitionListEp->get("/apis/apiextensions.k8s.io/v1beta1/watch/customresourcedefinitions", message = request);
    }
    
    public remote function watchApiextensionsV1beta1CustomResourceDefinition(string name) returns http:Response | error {
        http:Client watchApiextensionsV1beta1CustomResourceDefinitionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchApiextensionsV1beta1CustomResourceDefinitionEp->get(string `/apis/apiextensions.k8s.io/v1beta1/watch/customresourcedefinitions/${name}`, message = request);
    }
    
    public remote function getApiregistrationAPIGroup() returns http:Response | error {
        http:Client getApiregistrationAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getApiregistrationAPIGroupEp->get("/apis/apiregistration.k8s.io/", message = request);
    }
    
    // public remote function getApiregistrationV1APIResources() returns http:Response | error {
    //     http:Client getApiregistrationV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getApiregistrationV1APIResourcesEp->get("/apis/apiregistration.k8s.io/v1/", message = request);
    // }
    
    // public remote function listApiregistrationV1APIService() returns http:Response | error {
    //     http:Client listApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listApiregistrationV1APIServiceEp->get("/apis/apiregistration.k8s.io/v1/apiservices", message = request);
    // }
    
    // public remote function createApiregistrationV1APIService(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIService createApiregistrationV1APIServiceBody) returns http:Response | error {
    //     http:Client createApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createApiregistrationV1APIServiceEp->post("/apis/apiregistration.k8s.io/v1/apiservices", request);
    // }
    
    // public remote function deleteApiregistrationV1CollectionAPIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiregistrationV1CollectionAPIServiceBody) returns http:Response | error {
    //     http:Client deleteApiregistrationV1CollectionAPIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteApiregistrationV1CollectionAPIServiceEp->delete("/apis/apiregistration.k8s.io/v1/apiservices", request);
    // }
    
    // public remote function readApiregistrationV1APIService(string name) returns http:Response | error {
    //     http:Client readApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readApiregistrationV1APIServiceEp->get(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}`, message = request);
    // }
    
    // public remote function replaceApiregistrationV1APIService(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIService replaceApiregistrationV1APIServiceBody, string name) returns http:Response | error {
    //     http:Client replaceApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceApiregistrationV1APIServiceEp->put(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}`, request);
    // }
    
    // public remote function deleteApiregistrationV1APIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiregistrationV1APIServiceBody, string name) returns http:Response | error {
    //     http:Client deleteApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteApiregistrationV1APIServiceEp->delete(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}`, request);
    // }
    
    // public remote function patchApiregistrationV1APIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiregistrationV1APIServiceBody, string name) returns http:Response | error {
    //     http:Client patchApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchApiregistrationV1APIServiceEp->patch(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}`, request);
    // }
    
    // public remote function readApiregistrationV1APIServiceStatus(string name) returns http:Response | error {
    //     http:Client readApiregistrationV1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readApiregistrationV1APIServiceStatusEp->get(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}/status`, message = request);
    // }
    
    // public remote function replaceApiregistrationV1APIServiceStatus(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIService replaceApiregistrationV1APIServiceStatusBody, string name) returns http:Response | error {
    //     http:Client replaceApiregistrationV1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceApiregistrationV1APIServiceStatusEp->put(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}/status`, request);
    // }
    
    // public remote function patchApiregistrationV1APIServiceStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiregistrationV1APIServiceStatusBody, string name) returns http:Response | error {
    //     http:Client patchApiregistrationV1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchApiregistrationV1APIServiceStatusEp->patch(string `/apis/apiregistration.k8s.io/v1/apiservices/${name}/status`, request);
    // }
    
    // public remote function watchApiregistrationV1APIServiceList() returns http:Response | error {
    //     http:Client watchApiregistrationV1APIServiceListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchApiregistrationV1APIServiceListEp->get("/apis/apiregistration.k8s.io/v1/watch/apiservices", message = request);
    // }
    
    // public remote function watchApiregistrationV1APIService(string name) returns http:Response | error {
    //     http:Client watchApiregistrationV1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchApiregistrationV1APIServiceEp->get(string `/apis/apiregistration.k8s.io/v1/watch/apiservices/${name}`, message = request);
    // }
    
    // public remote function getApiregistrationV1beta1APIResources() returns http:Response | error {
    //     http:Client getApiregistrationV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getApiregistrationV1beta1APIResourcesEp->get("/apis/apiregistration.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listApiregistrationV1beta1APIService() returns http:Response | error {
    //     http:Client listApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listApiregistrationV1beta1APIServiceEp->get("/apis/apiregistration.k8s.io/v1beta1/apiservices", message = request);
    // }
    
    // public remote function createApiregistrationV1beta1APIService(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIService createApiregistrationV1beta1APIServiceBody) returns http:Response | error {
    //     http:Client createApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createApiregistrationV1beta1APIServiceEp->post("/apis/apiregistration.k8s.io/v1beta1/apiservices", request);
    // }
    
    // public remote function deleteApiregistrationV1beta1CollectionAPIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiregistrationV1beta1CollectionAPIServiceBody) returns http:Response | error {
    //     http:Client deleteApiregistrationV1beta1CollectionAPIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteApiregistrationV1beta1CollectionAPIServiceEp->delete("/apis/apiregistration.k8s.io/v1beta1/apiservices", request);
    // }
    
    // public remote function readApiregistrationV1beta1APIService(string name) returns http:Response | error {
    //     http:Client readApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readApiregistrationV1beta1APIServiceEp->get(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}`, message = request);
    // }
    
    // public remote function replaceApiregistrationV1beta1APIService(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIService replaceApiregistrationV1beta1APIServiceBody, string name) returns http:Response | error {
    //     http:Client replaceApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceApiregistrationV1beta1APIServiceEp->put(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}`, request);
    // }
    
    // public remote function deleteApiregistrationV1beta1APIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteApiregistrationV1beta1APIServiceBody, string name) returns http:Response | error {
    //     http:Client deleteApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteApiregistrationV1beta1APIServiceEp->delete(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}`, request);
    // }
    
    // public remote function patchApiregistrationV1beta1APIService(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiregistrationV1beta1APIServiceBody, string name) returns http:Response | error {
    //     http:Client patchApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchApiregistrationV1beta1APIServiceEp->patch(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}`, request);
    // }
    
    // public remote function readApiregistrationV1beta1APIServiceStatus(string name) returns http:Response | error {
    //     http:Client readApiregistrationV1beta1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readApiregistrationV1beta1APIServiceStatusEp->get(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}/status`, message = request);
    // }
    
    // public remote function replaceApiregistrationV1beta1APIServiceStatus(models:'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIService replaceApiregistrationV1beta1APIServiceStatusBody, string name) returns http:Response | error {
    //     http:Client replaceApiregistrationV1beta1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceApiregistrationV1beta1APIServiceStatusEp->put(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}/status`, request);
    // }
    
    // public remote function patchApiregistrationV1beta1APIServiceStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchApiregistrationV1beta1APIServiceStatusBody, string name) returns http:Response | error {
    //     http:Client patchApiregistrationV1beta1APIServiceStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchApiregistrationV1beta1APIServiceStatusEp->patch(string `/apis/apiregistration.k8s.io/v1beta1/apiservices/${name}/status`, request);
    // }
    
    // public remote function watchApiregistrationV1beta1APIServiceList() returns http:Response | error {
    //     http:Client watchApiregistrationV1beta1APIServiceListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchApiregistrationV1beta1APIServiceListEp->get("/apis/apiregistration.k8s.io/v1beta1/watch/apiservices", message = request);
    // }
    
    // public remote function watchApiregistrationV1beta1APIService(string name) returns http:Response | error {
    //     http:Client watchApiregistrationV1beta1APIServiceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchApiregistrationV1beta1APIServiceEp->get(string `/apis/apiregistration.k8s.io/v1beta1/watch/apiservices/${name}`, message = request);
    // }
    
    public remote function getAppsAPIGroup() returns http:Response | error {
        http:Client getAppsAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAppsAPIGroupEp->get("/apis/apps/", message = request);
    }
    
    public remote function getAppsV1APIResources() returns http:Response | error {
        http:Client getAppsV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAppsV1APIResourcesEp->get("/apis/apps/v1/", message = request);
    }
    
    public remote function listAppsV1ControllerRevisionForAllNamespaces() returns http:Response | error {
        http:Client listAppsV1ControllerRevisionForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1ControllerRevisionForAllNamespacesEp->get("/apis/apps/v1/controllerrevisions", message = request);
    }
    
    public remote function listAppsV1DaemonSetForAllNamespaces() returns http:Response | error {
        http:Client listAppsV1DaemonSetForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1DaemonSetForAllNamespacesEp->get("/apis/apps/v1/daemonsets", message = request);
    }
    
    public remote function listAppsV1DeploymentForAllNamespaces() returns http:Response | error {
        http:Client listAppsV1DeploymentForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1DeploymentForAllNamespacesEp->get("/apis/apps/v1/deployments", message = request);
    }
    
    public remote function listAppsV1NamespacedControllerRevision(string namespace) returns http:Response | error {
        http:Client listAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1NamespacedControllerRevisionEp->get(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions`, message = request);
    }
    
    public remote function createAppsV1NamespacedControllerRevision(models:'io\.k8s\.api\.apps\.v1\.ControllerRevision createAppsV1NamespacedControllerRevisionBody, string namespace) returns http:Response | error {
        http:Client createAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAppsV1NamespacedControllerRevisionEp->post(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions`, request);
    }
    
    public remote function deleteAppsV1CollectionNamespacedControllerRevision(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1CollectionNamespacedControllerRevisionBody, string namespace) returns http:Response | error {
        http:Client deleteAppsV1CollectionNamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1CollectionNamespacedControllerRevisionEp->delete(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions`, request);
    }
    
    public remote function readAppsV1NamespacedControllerRevision(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedControllerRevisionEp->get(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions/${name}`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedControllerRevision(models:'io\.k8s\.api\.apps\.v1\.ControllerRevision replaceAppsV1NamespacedControllerRevisionBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedControllerRevisionEp->put(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions/${name}`, request);
    }
    
    public remote function deleteAppsV1NamespacedControllerRevision(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1NamespacedControllerRevisionBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1NamespacedControllerRevisionEp->delete(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions/${name}`, request);
    }
    
    public remote function patchAppsV1NamespacedControllerRevision(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedControllerRevisionBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedControllerRevisionEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedControllerRevisionEp->patch(string `/apis/apps/v1/namespaces/${namespace}/controllerrevisions/${name}`, request);
    }
    
    public remote function listAppsV1NamespacedDaemonSet(string namespace) returns http:Response | error {
        http:Client listAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1NamespacedDaemonSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/daemonsets`, message = request);
    }
    
    public remote function createAppsV1NamespacedDaemonSet(models:'io\.k8s\.api\.apps\.v1\.DaemonSet createAppsV1NamespacedDaemonSetBody, string namespace) returns http:Response | error {
        http:Client createAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAppsV1NamespacedDaemonSetEp->post(string `/apis/apps/v1/namespaces/${namespace}/daemonsets`, request);
    }
    
    public remote function deleteAppsV1CollectionNamespacedDaemonSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1CollectionNamespacedDaemonSetBody, string namespace) returns http:Response | error {
        http:Client deleteAppsV1CollectionNamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1CollectionNamespacedDaemonSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/daemonsets`, request);
    }
    
    public remote function readAppsV1NamespacedDaemonSet(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedDaemonSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedDaemonSet(models:'io\.k8s\.api\.apps\.v1\.DaemonSet replaceAppsV1NamespacedDaemonSetBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedDaemonSetEp->put(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}`, request);
    }
    
    public remote function deleteAppsV1NamespacedDaemonSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1NamespacedDaemonSetBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1NamespacedDaemonSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}`, request);
    }
    
    public remote function patchAppsV1NamespacedDaemonSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedDaemonSetBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedDaemonSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedDaemonSetEp->patch(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}`, request);
    }
    
    public remote function readAppsV1NamespacedDaemonSetStatus(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedDaemonSetStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedDaemonSetStatusEp->get(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}/status`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedDaemonSetStatus(models:'io\.k8s\.api\.apps\.v1\.DaemonSet replaceAppsV1NamespacedDaemonSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedDaemonSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedDaemonSetStatusEp->put(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}/status`, request);
    }
    
    public remote function patchAppsV1NamespacedDaemonSetStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedDaemonSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedDaemonSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedDaemonSetStatusEp->patch(string `/apis/apps/v1/namespaces/${namespace}/daemonsets/${name}/status`, request);
    }
    
    public remote function listAppsV1NamespacedDeployment(string namespace) returns http:Response | error {
        http:Client listAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1NamespacedDeploymentEp->get(string `/apis/apps/v1/namespaces/${namespace}/deployments`, message = request);
    }
    
    public remote function createAppsV1NamespacedDeployment(models:'io\.k8s\.api\.apps\.v1\.Deployment createAppsV1NamespacedDeploymentBody, string namespace) returns http:Response | error {
        http:Client createAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAppsV1NamespacedDeploymentEp->post(string `/apis/apps/v1/namespaces/${namespace}/deployments`, request);
    }
    
    public remote function deleteAppsV1CollectionNamespacedDeployment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1CollectionNamespacedDeploymentBody, string namespace) returns http:Response | error {
        http:Client deleteAppsV1CollectionNamespacedDeploymentEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1CollectionNamespacedDeploymentEp->delete(string `/apis/apps/v1/namespaces/${namespace}/deployments`, request);
    }
    
    public remote function readAppsV1NamespacedDeployment(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedDeploymentEp->get(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedDeployment(models:'io\.k8s\.api\.apps\.v1\.Deployment replaceAppsV1NamespacedDeploymentBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedDeploymentEp->put(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}`, request);
    }
    
    public remote function deleteAppsV1NamespacedDeployment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1NamespacedDeploymentBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1NamespacedDeploymentEp->delete(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}`, request);
    }
    
    public remote function patchAppsV1NamespacedDeployment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedDeploymentBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedDeploymentEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedDeploymentEp->patch(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}`, request);
    }
    
    public remote function readAppsV1NamespacedDeploymentScale(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedDeploymentScaleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedDeploymentScaleEp->get(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/scale`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedDeploymentScale(models:'io\.k8s\.api\.autoscaling\.v1\.Scale replaceAppsV1NamespacedDeploymentScaleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedDeploymentScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedDeploymentScaleEp->put(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/scale`, request);
    }
    
    public remote function patchAppsV1NamespacedDeploymentScale(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedDeploymentScaleBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedDeploymentScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedDeploymentScaleEp->patch(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/scale`, request);
    }
    
    public remote function readAppsV1NamespacedDeploymentStatus(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedDeploymentStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedDeploymentStatusEp->get(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/status`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedDeploymentStatus(models:'io\.k8s\.api\.apps\.v1\.Deployment replaceAppsV1NamespacedDeploymentStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedDeploymentStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedDeploymentStatusEp->put(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/status`, request);
    }
    
    public remote function patchAppsV1NamespacedDeploymentStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedDeploymentStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedDeploymentStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedDeploymentStatusEp->patch(string `/apis/apps/v1/namespaces/${namespace}/deployments/${name}/status`, request);
    }
    
    public remote function listAppsV1NamespacedReplicaSet(string namespace) returns http:Response | error {
        http:Client listAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1NamespacedReplicaSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/replicasets`, message = request);
    }
    
    public remote function createAppsV1NamespacedReplicaSet(models:'io\.k8s\.api\.apps\.v1\.ReplicaSet createAppsV1NamespacedReplicaSetBody, string namespace) returns http:Response | error {
        http:Client createAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAppsV1NamespacedReplicaSetEp->post(string `/apis/apps/v1/namespaces/${namespace}/replicasets`, request);
    }
    
    public remote function deleteAppsV1CollectionNamespacedReplicaSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1CollectionNamespacedReplicaSetBody, string namespace) returns http:Response | error {
        http:Client deleteAppsV1CollectionNamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1CollectionNamespacedReplicaSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/replicasets`, request);
    }
    
    public remote function readAppsV1NamespacedReplicaSet(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedReplicaSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedReplicaSet(models:'io\.k8s\.api\.apps\.v1\.ReplicaSet replaceAppsV1NamespacedReplicaSetBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedReplicaSetEp->put(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}`, request);
    }
    
    public remote function deleteAppsV1NamespacedReplicaSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1NamespacedReplicaSetBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1NamespacedReplicaSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}`, request);
    }
    
    public remote function patchAppsV1NamespacedReplicaSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedReplicaSetBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedReplicaSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedReplicaSetEp->patch(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}`, request);
    }
    
    public remote function readAppsV1NamespacedReplicaSetScale(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedReplicaSetScaleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedReplicaSetScaleEp->get(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/scale`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedReplicaSetScale(models:'io\.k8s\.api\.autoscaling\.v1\.Scale replaceAppsV1NamespacedReplicaSetScaleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedReplicaSetScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedReplicaSetScaleEp->put(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/scale`, request);
    }
    
    public remote function patchAppsV1NamespacedReplicaSetScale(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedReplicaSetScaleBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedReplicaSetScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedReplicaSetScaleEp->patch(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/scale`, request);
    }
    
    public remote function readAppsV1NamespacedReplicaSetStatus(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedReplicaSetStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedReplicaSetStatusEp->get(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/status`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedReplicaSetStatus(models:'io\.k8s\.api\.apps\.v1\.ReplicaSet replaceAppsV1NamespacedReplicaSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedReplicaSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedReplicaSetStatusEp->put(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/status`, request);
    }
    
    public remote function patchAppsV1NamespacedReplicaSetStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedReplicaSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedReplicaSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedReplicaSetStatusEp->patch(string `/apis/apps/v1/namespaces/${namespace}/replicasets/${name}/status`, request);
    }
    
    public remote function listAppsV1NamespacedStatefulSet(string namespace) returns http:Response | error {
        http:Client listAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1NamespacedStatefulSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/statefulsets`, message = request);
    }
    
    public remote function createAppsV1NamespacedStatefulSet(models:'io\.k8s\.api\.apps\.v1\.StatefulSet createAppsV1NamespacedStatefulSetBody, string namespace) returns http:Response | error {
        http:Client createAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAppsV1NamespacedStatefulSetEp->post(string `/apis/apps/v1/namespaces/${namespace}/statefulsets`, request);
    }
    
    public remote function deleteAppsV1CollectionNamespacedStatefulSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1CollectionNamespacedStatefulSetBody, string namespace) returns http:Response | error {
        http:Client deleteAppsV1CollectionNamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1CollectionNamespacedStatefulSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/statefulsets`, request);
    }
    
    public remote function readAppsV1NamespacedStatefulSet(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedStatefulSetEp->get(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedStatefulSet(models:'io\.k8s\.api\.apps\.v1\.StatefulSet replaceAppsV1NamespacedStatefulSetBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedStatefulSetEp->put(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}`, request);
    }
    
    public remote function deleteAppsV1NamespacedStatefulSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAppsV1NamespacedStatefulSetBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAppsV1NamespacedStatefulSetEp->delete(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}`, request);
    }
    
    public remote function patchAppsV1NamespacedStatefulSet(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedStatefulSetBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedStatefulSetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedStatefulSetEp->patch(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}`, request);
    }
    
    public remote function readAppsV1NamespacedStatefulSetScale(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedStatefulSetScaleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedStatefulSetScaleEp->get(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/scale`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedStatefulSetScale(models:'io\.k8s\.api\.autoscaling\.v1\.Scale replaceAppsV1NamespacedStatefulSetScaleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedStatefulSetScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedStatefulSetScaleEp->put(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/scale`, request);
    }
    
    public remote function patchAppsV1NamespacedStatefulSetScale(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedStatefulSetScaleBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedStatefulSetScaleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedStatefulSetScaleEp->patch(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/scale`, request);
    }
    
    public remote function readAppsV1NamespacedStatefulSetStatus(string name, string namespace) returns http:Response | error {
        http:Client readAppsV1NamespacedStatefulSetStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAppsV1NamespacedStatefulSetStatusEp->get(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/status`, message = request);
    }
    
    public remote function replaceAppsV1NamespacedStatefulSetStatus(models:'io\.k8s\.api\.apps\.v1\.StatefulSet replaceAppsV1NamespacedStatefulSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAppsV1NamespacedStatefulSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAppsV1NamespacedStatefulSetStatusEp->put(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/status`, request);
    }
    
    public remote function patchAppsV1NamespacedStatefulSetStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAppsV1NamespacedStatefulSetStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAppsV1NamespacedStatefulSetStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAppsV1NamespacedStatefulSetStatusEp->patch(string `/apis/apps/v1/namespaces/${namespace}/statefulsets/${name}/status`, request);
    }
    
    public remote function listAppsV1ReplicaSetForAllNamespaces() returns http:Response | error {
        http:Client listAppsV1ReplicaSetForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1ReplicaSetForAllNamespacesEp->get("/apis/apps/v1/replicasets", message = request);
    }
    
    public remote function listAppsV1StatefulSetForAllNamespaces() returns http:Response | error {
        http:Client listAppsV1StatefulSetForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAppsV1StatefulSetForAllNamespacesEp->get("/apis/apps/v1/statefulsets", message = request);
    }
    
    // public remote function watchAppsV1ControllerRevisionListForAllNamespaces() returns http:Response | error {
    //     http:Client watchAppsV1ControllerRevisionListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1ControllerRevisionListForAllNamespacesEp->get("/apis/apps/v1/watch/controllerrevisions", message = request);
    // }
    
    // public remote function watchAppsV1DaemonSetListForAllNamespaces() returns http:Response | error {
    //     http:Client watchAppsV1DaemonSetListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1DaemonSetListForAllNamespacesEp->get("/apis/apps/v1/watch/daemonsets", message = request);
    // }
    
    // public remote function watchAppsV1DeploymentListForAllNamespaces() returns http:Response | error {
    //     http:Client watchAppsV1DeploymentListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1DeploymentListForAllNamespacesEp->get("/apis/apps/v1/watch/deployments", message = request);
    // }
    
    // public remote function watchAppsV1NamespacedControllerRevisionList(string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedControllerRevisionListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedControllerRevisionListEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/controllerrevisions`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedControllerRevision(string name, string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedControllerRevisionEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedControllerRevisionEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/controllerrevisions/${name}`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedDaemonSetList(string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedDaemonSetListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedDaemonSetListEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/daemonsets`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedDaemonSet(string name, string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedDaemonSetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedDaemonSetEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/daemonsets/${name}`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedDeploymentList(string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedDeploymentListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedDeploymentListEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/deployments`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedDeployment(string name, string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedDeploymentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedDeploymentEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/deployments/${name}`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedReplicaSetList(string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedReplicaSetListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedReplicaSetListEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/replicasets`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedReplicaSet(string name, string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedReplicaSetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedReplicaSetEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/replicasets/${name}`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedStatefulSetList(string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedStatefulSetListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedStatefulSetListEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/statefulsets`, message = request);
    // }
    
    // public remote function watchAppsV1NamespacedStatefulSet(string name, string namespace) returns http:Response | error {
    //     http:Client watchAppsV1NamespacedStatefulSetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1NamespacedStatefulSetEp->get(string `/apis/apps/v1/watch/namespaces/${namespace}/statefulsets/${name}`, message = request);
    // }
    
    // public remote function watchAppsV1ReplicaSetListForAllNamespaces() returns http:Response | error {
    //     http:Client watchAppsV1ReplicaSetListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1ReplicaSetListForAllNamespacesEp->get("/apis/apps/v1/watch/replicasets", message = request);
    // }
    
    // public remote function watchAppsV1StatefulSetListForAllNamespaces() returns http:Response | error {
    //     http:Client watchAppsV1StatefulSetListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAppsV1StatefulSetListForAllNamespacesEp->get("/apis/apps/v1/watch/statefulsets", message = request);
    // }
    
    // public remote function getAuditregistrationAPIGroup() returns http:Response | error {
    //     http:Client getAuditregistrationAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuditregistrationAPIGroupEp->get("/apis/auditregistration.k8s.io/", message = request);
    // }
    
    // public remote function getAuditregistrationV1alpha1APIResources() returns http:Response | error {
    //     http:Client getAuditregistrationV1alpha1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuditregistrationV1alpha1APIResourcesEp->get("/apis/auditregistration.k8s.io/v1alpha1/", message = request);
    // }
    
    // public remote function listAuditregistrationV1alpha1AuditSink() returns http:Response | error {
    //     http:Client listAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listAuditregistrationV1alpha1AuditSinkEp->get("/apis/auditregistration.k8s.io/v1alpha1/auditsinks", message = request);
    // }
    
    // public remote function createAuditregistrationV1alpha1AuditSink(models:'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSink createAuditregistrationV1alpha1AuditSinkBody) returns http:Response | error {
    //     http:Client createAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuditregistrationV1alpha1AuditSinkEp->post("/apis/auditregistration.k8s.io/v1alpha1/auditsinks", request);
    // }
    
    // public remote function deleteAuditregistrationV1alpha1CollectionAuditSink(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAuditregistrationV1alpha1CollectionAuditSinkBody) returns http:Response | error {
    //     http:Client deleteAuditregistrationV1alpha1CollectionAuditSinkEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAuditregistrationV1alpha1CollectionAuditSinkEp->delete("/apis/auditregistration.k8s.io/v1alpha1/auditsinks", request);
    // }
    
    // public remote function readAuditregistrationV1alpha1AuditSink(string name) returns http:Response | error {
    //     http:Client readAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readAuditregistrationV1alpha1AuditSinkEp->get(string `/apis/auditregistration.k8s.io/v1alpha1/auditsinks/${name}`, message = request);
    // }
    
    // public remote function replaceAuditregistrationV1alpha1AuditSink(models:'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSink replaceAuditregistrationV1alpha1AuditSinkBody, string name) returns http:Response | error {
    //     http:Client replaceAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceAuditregistrationV1alpha1AuditSinkEp->put(string `/apis/auditregistration.k8s.io/v1alpha1/auditsinks/${name}`, request);
    // }
    
    // public remote function deleteAuditregistrationV1alpha1AuditSink(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAuditregistrationV1alpha1AuditSinkBody, string name) returns http:Response | error {
    //     http:Client deleteAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteAuditregistrationV1alpha1AuditSinkEp->delete(string `/apis/auditregistration.k8s.io/v1alpha1/auditsinks/${name}`, request);
    // }
    
    // public remote function patchAuditregistrationV1alpha1AuditSink(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAuditregistrationV1alpha1AuditSinkBody, string name) returns http:Response | error {
    //     http:Client patchAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchAuditregistrationV1alpha1AuditSinkEp->patch(string `/apis/auditregistration.k8s.io/v1alpha1/auditsinks/${name}`, request);
    // }
    
    // public remote function watchAuditregistrationV1alpha1AuditSinkList() returns http:Response | error {
    //     http:Client watchAuditregistrationV1alpha1AuditSinkListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAuditregistrationV1alpha1AuditSinkListEp->get("/apis/auditregistration.k8s.io/v1alpha1/watch/auditsinks", message = request);
    // }
    
    // public remote function watchAuditregistrationV1alpha1AuditSink(string name) returns http:Response | error {
    //     http:Client watchAuditregistrationV1alpha1AuditSinkEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchAuditregistrationV1alpha1AuditSinkEp->get(string `/apis/auditregistration.k8s.io/v1alpha1/watch/auditsinks/${name}`, message = request);
    // }
    
    // public remote function getAuthenticationAPIGroup() returns http:Response | error {
    //     http:Client getAuthenticationAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthenticationAPIGroupEp->get("/apis/authentication.k8s.io/", message = request);
    // }
    
    // public remote function getAuthenticationV1APIResources() returns http:Response | error {
    //     http:Client getAuthenticationV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthenticationV1APIResourcesEp->get("/apis/authentication.k8s.io/v1/", message = request);
    // }
    
    // public remote function createAuthenticationV1TokenReview(models:'io\.k8s\.api\.authentication\.v1\.TokenReview createAuthenticationV1TokenReviewBody) returns http:Response | error {
    //     http:Client createAuthenticationV1TokenReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthenticationV1TokenReviewEp->post("/apis/authentication.k8s.io/v1/tokenreviews", request);
    // }
    
    // public remote function getAuthenticationV1beta1APIResources() returns http:Response | error {
    //     http:Client getAuthenticationV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthenticationV1beta1APIResourcesEp->get("/apis/authentication.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function createAuthenticationV1beta1TokenReview(models:'io\.k8s\.api\.authentication\.v1beta1\.TokenReview createAuthenticationV1beta1TokenReviewBody) returns http:Response | error {
    //     http:Client createAuthenticationV1beta1TokenReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthenticationV1beta1TokenReviewEp->post("/apis/authentication.k8s.io/v1beta1/tokenreviews", request);
    // }
    
    // public remote function getAuthorizationAPIGroup() returns http:Response | error {
    //     http:Client getAuthorizationAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthorizationAPIGroupEp->get("/apis/authorization.k8s.io/", message = request);
    // }
    
    // public remote function getAuthorizationV1APIResources() returns http:Response | error {
    //     http:Client getAuthorizationV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthorizationV1APIResourcesEp->get("/apis/authorization.k8s.io/v1/", message = request);
    // }
    
    // public remote function createAuthorizationV1NamespacedLocalSubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1\.LocalSubjectAccessReview createAuthorizationV1NamespacedLocalSubjectAccessReviewBody, string namespace) returns http:Response | error {
    //     http:Client createAuthorizationV1NamespacedLocalSubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1NamespacedLocalSubjectAccessReviewEp->post(string `/apis/authorization.k8s.io/v1/namespaces/${namespace}/localsubjectaccessreviews`, request);
    // }
    
    // public remote function createAuthorizationV1SelfSubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1\.SelfSubjectAccessReview createAuthorizationV1SelfSubjectAccessReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1SelfSubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1SelfSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1/selfsubjectaccessreviews", request);
    // }
    
    // public remote function createAuthorizationV1SelfSubjectRulesReview(models:'io\.k8s\.api\.authorization\.v1\.SelfSubjectRulesReview createAuthorizationV1SelfSubjectRulesReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1SelfSubjectRulesReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1SelfSubjectRulesReviewEp->post("/apis/authorization.k8s.io/v1/selfsubjectrulesreviews", request);
    // }
    
    // public remote function createAuthorizationV1SubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1\.SubjectAccessReview createAuthorizationV1SubjectAccessReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1SubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1SubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1/subjectaccessreviews", request);
    // }
    
    // public remote function getAuthorizationV1beta1APIResources() returns http:Response | error {
    //     http:Client getAuthorizationV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getAuthorizationV1beta1APIResourcesEp->get("/apis/authorization.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function createAuthorizationV1beta1NamespacedLocalSubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1beta1\.LocalSubjectAccessReview createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewBody, string namespace) returns http:Response | error {
    //     http:Client createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1beta1NamespacedLocalSubjectAccessReviewEp->post(string `/apis/authorization.k8s.io/v1beta1/namespaces/${namespace}/localsubjectaccessreviews`, request);
    // }
    
    // public remote function createAuthorizationV1beta1SelfSubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectAccessReview createAuthorizationV1beta1SelfSubjectAccessReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1beta1SelfSubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1beta1SelfSubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1beta1/selfsubjectaccessreviews", request);
    // }
    
    // public remote function createAuthorizationV1beta1SelfSubjectRulesReview(models:'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectRulesReview createAuthorizationV1beta1SelfSubjectRulesReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1beta1SelfSubjectRulesReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1beta1SelfSubjectRulesReviewEp->post("/apis/authorization.k8s.io/v1beta1/selfsubjectrulesreviews", request);
    // }
    
    // public remote function createAuthorizationV1beta1SubjectAccessReview(models:'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReview createAuthorizationV1beta1SubjectAccessReviewBody) returns http:Response | error {
    //     http:Client createAuthorizationV1beta1SubjectAccessReviewEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createAuthorizationV1beta1SubjectAccessReviewEp->post("/apis/authorization.k8s.io/v1beta1/subjectaccessreviews", request);
    // }
    
    public remote function getAutoscalingAPIGroup() returns http:Response | error {
        http:Client getAutoscalingAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAutoscalingAPIGroupEp->get("/apis/autoscaling/", message = request);
    }
    
    public remote function getAutoscalingV1APIResources() returns http:Response | error {
        http:Client getAutoscalingV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAutoscalingV1APIResourcesEp->get("/apis/autoscaling/v1/", message = request);
    }
    
    public remote function listAutoscalingV1HorizontalPodAutoscalerForAllNamespaces() returns http:Response | error {
        http:Client listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV1HorizontalPodAutoscalerForAllNamespacesEp->get("/apis/autoscaling/v1/horizontalpodautoscalers", message = request);
    }
    
    public remote function listAutoscalingV1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
        http:Client listAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function createAutoscalingV1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscaler createAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client createAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAutoscalingV1NamespacedHorizontalPodAutoscalerEp->post(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV1CollectionNamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function readAutoscalingV1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    public remote function replaceAutoscalingV1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscaler replaceAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV1NamespacedHorizontalPodAutoscalerEp->put(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function deleteAutoscalingV1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV1NamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function patchAutoscalingV1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->patch(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function readAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->get(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, message = request);
    }
    
    public remote function replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscaler replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->put(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV1NamespacedHorizontalPodAutoscalerStatusEp->patch(string `/apis/autoscaling/v1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response | error {
        http:Client watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV1HorizontalPodAutoscalerListForAllNamespacesEp->get("/apis/autoscaling/v1/watch/horizontalpodautoscalers", message = request);
    }
    
    public remote function watchAutoscalingV1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response | error {
        http:Client watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV1NamespacedHorizontalPodAutoscalerListEp->get(string `/apis/autoscaling/v1/watch/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function watchAutoscalingV1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v1/watch/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    public remote function getAutoscalingV2beta1APIResources() returns http:Response | error {
        http:Client getAutoscalingV2beta1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAutoscalingV2beta1APIResourcesEp->get("/apis/autoscaling/v2beta1/", message = request);
    }
    
    public remote function listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces() returns http:Response | error {
        http:Client listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespacesEp->get("/apis/autoscaling/v2beta1/horizontalpodautoscalers", message = request);
    }
    
    public remote function listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
        http:Client listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscaler createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->post(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    public remote function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscaler replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->put(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->patch(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->get(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, message = request);
    }
    
    public remote function replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscaler replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->put(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatusEp->patch(string `/apis/autoscaling/v2beta1/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces() returns http:Response | error {
        http:Client watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespacesEp->get("/apis/autoscaling/v2beta1/watch/horizontalpodautoscalers", message = request);
    }
    
    public remote function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response | error {
        http:Client watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerListEp->get(string `/apis/autoscaling/v2beta1/watch/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta1/watch/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    public remote function getAutoscalingV2beta2APIResources() returns http:Response | error {
        http:Client getAutoscalingV2beta2APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getAutoscalingV2beta2APIResourcesEp->get("/apis/autoscaling/v2beta2/", message = request);
    }
    
    public remote function listAutoscalingV2beta2HorizontalPodAutoscalerForAllNamespaces() returns http:Response | error {
        http:Client listAutoscalingV2beta2HorizontalPodAutoscalerForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV2beta2HorizontalPodAutoscalerForAllNamespacesEp->get("/apis/autoscaling/v2beta2/horizontalpodautoscalers", message = request);
    }
    
    public remote function listAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(string namespace) returns http:Response | error {
        http:Client listAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function createAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscaler createAutoscalingV2beta2NamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client createAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->post(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function deleteAutoscalingV2beta2CollectionNamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV2beta2CollectionNamespacedHorizontalPodAutoscalerBody, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV2beta2CollectionNamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV2beta2CollectionNamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers`, request);
    }
    
    public remote function readAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    public remote function replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscaler replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->put(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function deleteAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteAutoscalingV2beta2NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client deleteAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->delete(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function patchAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->patch(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}`, request);
    }
    
    public remote function readAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatus(string name, string namespace) returns http:Response | error {
        http:Client readAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp->get(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, message = request);
    }
    
    public remote function replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscaler replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp->put(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerStatusEp->patch(string `/apis/autoscaling/v2beta2/namespaces/${namespace}/horizontalpodautoscalers/${name}/status`, request);
    }
    
    public remote function watchAutoscalingV2beta2HorizontalPodAutoscalerListForAllNamespaces() returns http:Response | error {
        http:Client watchAutoscalingV2beta2HorizontalPodAutoscalerListForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta2HorizontalPodAutoscalerListForAllNamespacesEp->get("/apis/autoscaling/v2beta2/watch/horizontalpodautoscalers", message = request);
    }
    
    public remote function watchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerList(string namespace) returns http:Response | error {
        http:Client watchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerListEp->get(string `/apis/autoscaling/v2beta2/watch/namespaces/${namespace}/horizontalpodautoscalers`, message = request);
    }
    
    public remote function watchAutoscalingV2beta2NamespacedHorizontalPodAutoscaler(string name, string namespace) returns http:Response | error {
        http:Client watchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchAutoscalingV2beta2NamespacedHorizontalPodAutoscalerEp->get(string `/apis/autoscaling/v2beta2/watch/namespaces/${namespace}/horizontalpodautoscalers/${name}`, message = request);
    }
    
    // public remote function getBatchAPIGroup() returns http:Response | error {
    //     http:Client getBatchAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getBatchAPIGroupEp->get("/apis/batch/", message = request);
    // }
    
    // public remote function getBatchV1APIResources() returns http:Response | error {
    //     http:Client getBatchV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getBatchV1APIResourcesEp->get("/apis/batch/v1/", message = request);
    // }
    
    // public remote function listBatchV1JobForAllNamespaces() returns http:Response | error {
    //     http:Client listBatchV1JobForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV1JobForAllNamespacesEp->get("/apis/batch/v1/jobs", message = request);
    // }
    
    // public remote function listBatchV1NamespacedJob(string namespace) returns http:Response | error {
    //     http:Client listBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV1NamespacedJobEp->get(string `/apis/batch/v1/namespaces/${namespace}/jobs`, message = request);
    // }
    
    // public remote function createBatchV1NamespacedJob(models:'io\.k8s\.api\.batch\.v1\.Job createBatchV1NamespacedJobBody, string namespace) returns http:Response | error {
    //     http:Client createBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createBatchV1NamespacedJobEp->post(string `/apis/batch/v1/namespaces/${namespace}/jobs`, request);
    // }
    
    // public remote function deleteBatchV1CollectionNamespacedJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV1CollectionNamespacedJobBody, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV1CollectionNamespacedJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV1CollectionNamespacedJobEp->delete(string `/apis/batch/v1/namespaces/${namespace}/jobs`, request);
    // }
    
    // public remote function readBatchV1NamespacedJob(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV1NamespacedJobEp->get(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}`, message = request);
    // }
    
    // public remote function replaceBatchV1NamespacedJob(models:'io\.k8s\.api\.batch\.v1\.Job replaceBatchV1NamespacedJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV1NamespacedJobEp->put(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}`, request);
    // }
    
    // public remote function deleteBatchV1NamespacedJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV1NamespacedJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV1NamespacedJobEp->delete(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}`, request);
    // }
    
    // public remote function patchBatchV1NamespacedJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV1NamespacedJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV1NamespacedJobEp->patch(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}`, request);
    // }
    
    // public remote function readBatchV1NamespacedJobStatus(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV1NamespacedJobStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV1NamespacedJobStatusEp->get(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}/status`, message = request);
    // }
    
    // public remote function replaceBatchV1NamespacedJobStatus(models:'io\.k8s\.api\.batch\.v1\.Job replaceBatchV1NamespacedJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV1NamespacedJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV1NamespacedJobStatusEp->put(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}/status`, request);
    // }
    
    // public remote function patchBatchV1NamespacedJobStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV1NamespacedJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV1NamespacedJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV1NamespacedJobStatusEp->patch(string `/apis/batch/v1/namespaces/${namespace}/jobs/${name}/status`, request);
    // }
    
    // public remote function watchBatchV1JobListForAllNamespaces() returns http:Response | error {
    //     http:Client watchBatchV1JobListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1JobListForAllNamespacesEp->get("/apis/batch/v1/watch/jobs", message = request);
    // }
    
    // public remote function watchBatchV1NamespacedJobList(string namespace) returns http:Response | error {
    //     http:Client watchBatchV1NamespacedJobListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1NamespacedJobListEp->get(string `/apis/batch/v1/watch/namespaces/${namespace}/jobs`, message = request);
    // }
    
    // public remote function watchBatchV1NamespacedJob(string name, string namespace) returns http:Response | error {
    //     http:Client watchBatchV1NamespacedJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1NamespacedJobEp->get(string `/apis/batch/v1/watch/namespaces/${namespace}/jobs/${name}`, message = request);
    // }
    
    // public remote function getBatchV1beta1APIResources() returns http:Response | error {
    //     http:Client getBatchV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getBatchV1beta1APIResourcesEp->get("/apis/batch/v1beta1/", message = request);
    // }
    
    // public remote function listBatchV1beta1CronJobForAllNamespaces() returns http:Response | error {
    //     http:Client listBatchV1beta1CronJobForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV1beta1CronJobForAllNamespacesEp->get("/apis/batch/v1beta1/cronjobs", message = request);
    // }
    
    // public remote function listBatchV1beta1NamespacedCronJob(string namespace) returns http:Response | error {
    //     http:Client listBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV1beta1NamespacedCronJobEp->get(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs`, message = request);
    // }
    
    // public remote function createBatchV1beta1NamespacedCronJob(models:'io\.k8s\.api\.batch\.v1beta1\.CronJob createBatchV1beta1NamespacedCronJobBody, string namespace) returns http:Response | error {
    //     http:Client createBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createBatchV1beta1NamespacedCronJobEp->post(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs`, request);
    // }
    
    // public remote function deleteBatchV1beta1CollectionNamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV1beta1CollectionNamespacedCronJobBody, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV1beta1CollectionNamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV1beta1CollectionNamespacedCronJobEp->delete(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs`, request);
    // }
    
    // public remote function readBatchV1beta1NamespacedCronJob(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV1beta1NamespacedCronJobEp->get(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}`, message = request);
    // }
    
    // public remote function replaceBatchV1beta1NamespacedCronJob(models:'io\.k8s\.api\.batch\.v1beta1\.CronJob replaceBatchV1beta1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV1beta1NamespacedCronJobEp->put(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function deleteBatchV1beta1NamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV1beta1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV1beta1NamespacedCronJobEp->delete(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function patchBatchV1beta1NamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV1beta1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV1beta1NamespacedCronJobEp->patch(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function readBatchV1beta1NamespacedCronJobStatus(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV1beta1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV1beta1NamespacedCronJobStatusEp->get(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}/status`, message = request);
    // }
    
    // public remote function replaceBatchV1beta1NamespacedCronJobStatus(models:'io\.k8s\.api\.batch\.v1beta1\.CronJob replaceBatchV1beta1NamespacedCronJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV1beta1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV1beta1NamespacedCronJobStatusEp->put(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}/status`, request);
    // }
    
    // public remote function patchBatchV1beta1NamespacedCronJobStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV1beta1NamespacedCronJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV1beta1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV1beta1NamespacedCronJobStatusEp->patch(string `/apis/batch/v1beta1/namespaces/${namespace}/cronjobs/${name}/status`, request);
    // }
    
    // public remote function watchBatchV1beta1CronJobListForAllNamespaces() returns http:Response | error {
    //     http:Client watchBatchV1beta1CronJobListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1beta1CronJobListForAllNamespacesEp->get("/apis/batch/v1beta1/watch/cronjobs", message = request);
    // }
    
    // public remote function watchBatchV1beta1NamespacedCronJobList(string namespace) returns http:Response | error {
    //     http:Client watchBatchV1beta1NamespacedCronJobListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1beta1NamespacedCronJobListEp->get(string `/apis/batch/v1beta1/watch/namespaces/${namespace}/cronjobs`, message = request);
    // }
    
    // public remote function watchBatchV1beta1NamespacedCronJob(string name, string namespace) returns http:Response | error {
    //     http:Client watchBatchV1beta1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV1beta1NamespacedCronJobEp->get(string `/apis/batch/v1beta1/watch/namespaces/${namespace}/cronjobs/${name}`, message = request);
    // }
    
    // public remote function getBatchV2alpha1APIResources() returns http:Response | error {
    //     http:Client getBatchV2alpha1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getBatchV2alpha1APIResourcesEp->get("/apis/batch/v2alpha1/", message = request);
    // }
    
    // public remote function listBatchV2alpha1CronJobForAllNamespaces() returns http:Response | error {
    //     http:Client listBatchV2alpha1CronJobForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV2alpha1CronJobForAllNamespacesEp->get("/apis/batch/v2alpha1/cronjobs", message = request);
    // }
    
    // public remote function listBatchV2alpha1NamespacedCronJob(string namespace) returns http:Response | error {
    //     http:Client listBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listBatchV2alpha1NamespacedCronJobEp->get(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs`, message = request);
    // }
    
    // public remote function createBatchV2alpha1NamespacedCronJob(models:'io\.k8s\.api\.batch\.v2alpha1\.CronJob createBatchV2alpha1NamespacedCronJobBody, string namespace) returns http:Response | error {
    //     http:Client createBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createBatchV2alpha1NamespacedCronJobEp->post(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs`, request);
    // }
    
    // public remote function deleteBatchV2alpha1CollectionNamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV2alpha1CollectionNamespacedCronJobBody, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV2alpha1CollectionNamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV2alpha1CollectionNamespacedCronJobEp->delete(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs`, request);
    // }
    
    // public remote function readBatchV2alpha1NamespacedCronJob(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV2alpha1NamespacedCronJobEp->get(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}`, message = request);
    // }
    
    // public remote function replaceBatchV2alpha1NamespacedCronJob(models:'io\.k8s\.api\.batch\.v2alpha1\.CronJob replaceBatchV2alpha1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV2alpha1NamespacedCronJobEp->put(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function deleteBatchV2alpha1NamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteBatchV2alpha1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteBatchV2alpha1NamespacedCronJobEp->delete(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function patchBatchV2alpha1NamespacedCronJob(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV2alpha1NamespacedCronJobBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV2alpha1NamespacedCronJobEp->patch(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}`, request);
    // }
    
    // public remote function readBatchV2alpha1NamespacedCronJobStatus(string name, string namespace) returns http:Response | error {
    //     http:Client readBatchV2alpha1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readBatchV2alpha1NamespacedCronJobStatusEp->get(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}/status`, message = request);
    // }
    
    // public remote function replaceBatchV2alpha1NamespacedCronJobStatus(models:'io\.k8s\.api\.batch\.v2alpha1\.CronJob replaceBatchV2alpha1NamespacedCronJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceBatchV2alpha1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceBatchV2alpha1NamespacedCronJobStatusEp->put(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}/status`, request);
    // }
    
    // public remote function patchBatchV2alpha1NamespacedCronJobStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchBatchV2alpha1NamespacedCronJobStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchBatchV2alpha1NamespacedCronJobStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchBatchV2alpha1NamespacedCronJobStatusEp->patch(string `/apis/batch/v2alpha1/namespaces/${namespace}/cronjobs/${name}/status`, request);
    // }
    
    // public remote function watchBatchV2alpha1CronJobListForAllNamespaces() returns http:Response | error {
    //     http:Client watchBatchV2alpha1CronJobListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV2alpha1CronJobListForAllNamespacesEp->get("/apis/batch/v2alpha1/watch/cronjobs", message = request);
    // }
    
    // public remote function watchBatchV2alpha1NamespacedCronJobList(string namespace) returns http:Response | error {
    //     http:Client watchBatchV2alpha1NamespacedCronJobListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV2alpha1NamespacedCronJobListEp->get(string `/apis/batch/v2alpha1/watch/namespaces/${namespace}/cronjobs`, message = request);
    // }
    
    // public remote function watchBatchV2alpha1NamespacedCronJob(string name, string namespace) returns http:Response | error {
    //     http:Client watchBatchV2alpha1NamespacedCronJobEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchBatchV2alpha1NamespacedCronJobEp->get(string `/apis/batch/v2alpha1/watch/namespaces/${namespace}/cronjobs/${name}`, message = request);
    // }
    
    // public remote function getCertificatesAPIGroup() returns http:Response | error {
    //     http:Client getCertificatesAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getCertificatesAPIGroupEp->get("/apis/certificates.k8s.io/", message = request);
    // }
    
    // public remote function getCertificatesV1beta1APIResources() returns http:Response | error {
    //     http:Client getCertificatesV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getCertificatesV1beta1APIResourcesEp->get("/apis/certificates.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listCertificatesV1beta1CertificateSigningRequest() returns http:Response | error {
    //     http:Client listCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listCertificatesV1beta1CertificateSigningRequestEp->get("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", message = request);
    // }
    
    // public remote function createCertificatesV1beta1CertificateSigningRequest(models:'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest createCertificatesV1beta1CertificateSigningRequestBody) returns http:Response | error {
    //     http:Client createCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createCertificatesV1beta1CertificateSigningRequestEp->post("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", request);
    // }
    
    // public remote function deleteCertificatesV1beta1CollectionCertificateSigningRequest(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCertificatesV1beta1CollectionCertificateSigningRequestBody) returns http:Response | error {
    //     http:Client deleteCertificatesV1beta1CollectionCertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCertificatesV1beta1CollectionCertificateSigningRequestEp->delete("/apis/certificates.k8s.io/v1beta1/certificatesigningrequests", request);
    // }
    
    // public remote function readCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response | error {
    //     http:Client readCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readCertificatesV1beta1CertificateSigningRequestEp->get(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}`, message = request);
    // }
    
    // public remote function replaceCertificatesV1beta1CertificateSigningRequest(models:'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest replaceCertificatesV1beta1CertificateSigningRequestBody, string name) returns http:Response | error {
    //     http:Client replaceCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceCertificatesV1beta1CertificateSigningRequestEp->put(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}`, request);
    // }
    
    // public remote function deleteCertificatesV1beta1CertificateSigningRequest(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCertificatesV1beta1CertificateSigningRequestBody, string name) returns http:Response | error {
    //     http:Client deleteCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCertificatesV1beta1CertificateSigningRequestEp->delete(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}`, request);
    // }
    
    // public remote function patchCertificatesV1beta1CertificateSigningRequest(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCertificatesV1beta1CertificateSigningRequestBody, string name) returns http:Response | error {
    //     http:Client patchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchCertificatesV1beta1CertificateSigningRequestEp->patch(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}`, request);
    // }
    
    // public remote function replaceCertificatesV1beta1CertificateSigningRequestApproval(models:'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest replaceCertificatesV1beta1CertificateSigningRequestApprovalBody, string name) returns http:Response | error {
    //     http:Client replaceCertificatesV1beta1CertificateSigningRequestApprovalEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceCertificatesV1beta1CertificateSigningRequestApprovalEp->put(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}/approval`, request);
    // }
    
    // public remote function readCertificatesV1beta1CertificateSigningRequestStatus(string name) returns http:Response | error {
    //     http:Client readCertificatesV1beta1CertificateSigningRequestStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readCertificatesV1beta1CertificateSigningRequestStatusEp->get(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}/status`, message = request);
    // }
    
    // public remote function replaceCertificatesV1beta1CertificateSigningRequestStatus(models:'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest replaceCertificatesV1beta1CertificateSigningRequestStatusBody, string name) returns http:Response | error {
    //     http:Client replaceCertificatesV1beta1CertificateSigningRequestStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceCertificatesV1beta1CertificateSigningRequestStatusEp->put(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}/status`, request);
    // }
    
    // public remote function patchCertificatesV1beta1CertificateSigningRequestStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCertificatesV1beta1CertificateSigningRequestStatusBody, string name) returns http:Response | error {
    //     http:Client patchCertificatesV1beta1CertificateSigningRequestStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchCertificatesV1beta1CertificateSigningRequestStatusEp->patch(string `/apis/certificates.k8s.io/v1beta1/certificatesigningrequests/${name}/status`, request);
    // }
    
    // public remote function watchCertificatesV1beta1CertificateSigningRequestList() returns http:Response | error {
    //     http:Client watchCertificatesV1beta1CertificateSigningRequestListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCertificatesV1beta1CertificateSigningRequestListEp->get("/apis/certificates.k8s.io/v1beta1/watch/certificatesigningrequests", message = request);
    // }
    
    // public remote function watchCertificatesV1beta1CertificateSigningRequest(string name) returns http:Response | error {
    //     http:Client watchCertificatesV1beta1CertificateSigningRequestEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCertificatesV1beta1CertificateSigningRequestEp->get(string `/apis/certificates.k8s.io/v1beta1/watch/certificatesigningrequests/${name}`, message = request);
    // }
    
    // public remote function getCoordinationAPIGroup() returns http:Response | error {
    //     http:Client getCoordinationAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getCoordinationAPIGroupEp->get("/apis/coordination.k8s.io/", message = request);
    // }
    
    // public remote function getCoordinationV1APIResources() returns http:Response | error {
    //     http:Client getCoordinationV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getCoordinationV1APIResourcesEp->get("/apis/coordination.k8s.io/v1/", message = request);
    // }
    
    // public remote function listCoordinationV1LeaseForAllNamespaces() returns http:Response | error {
    //     http:Client listCoordinationV1LeaseForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listCoordinationV1LeaseForAllNamespacesEp->get("/apis/coordination.k8s.io/v1/leases", message = request);
    // }
    
    // public remote function listCoordinationV1NamespacedLease(string namespace) returns http:Response | error {
    //     http:Client listCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listCoordinationV1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases`, message = request);
    // }
    
    // public remote function createCoordinationV1NamespacedLease(models:'io\.k8s\.api\.coordination\.v1\.Lease createCoordinationV1NamespacedLeaseBody, string namespace) returns http:Response | error {
    //     http:Client createCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createCoordinationV1NamespacedLeaseEp->post(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases`, request);
    // }
    
    // public remote function deleteCoordinationV1CollectionNamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoordinationV1CollectionNamespacedLeaseBody, string namespace) returns http:Response | error {
    //     http:Client deleteCoordinationV1CollectionNamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCoordinationV1CollectionNamespacedLeaseEp->delete(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases`, request);
    // }
    
    // public remote function readCoordinationV1NamespacedLease(string name, string namespace) returns http:Response | error {
    //     http:Client readCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readCoordinationV1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases/${name}`, message = request);
    // }
    
    // public remote function replaceCoordinationV1NamespacedLease(models:'io\.k8s\.api\.coordination\.v1\.Lease replaceCoordinationV1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceCoordinationV1NamespacedLeaseEp->put(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function deleteCoordinationV1NamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoordinationV1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCoordinationV1NamespacedLeaseEp->delete(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function patchCoordinationV1NamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoordinationV1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchCoordinationV1NamespacedLeaseEp->patch(string `/apis/coordination.k8s.io/v1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function watchCoordinationV1LeaseListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoordinationV1LeaseListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1LeaseListForAllNamespacesEp->get("/apis/coordination.k8s.io/v1/watch/leases", message = request);
    // }
    
    // public remote function watchCoordinationV1NamespacedLeaseList(string namespace) returns http:Response | error {
    //     http:Client watchCoordinationV1NamespacedLeaseListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1NamespacedLeaseListEp->get(string `/apis/coordination.k8s.io/v1/watch/namespaces/${namespace}/leases`, message = request);
    // }
    
    // public remote function watchCoordinationV1NamespacedLease(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoordinationV1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1/watch/namespaces/${namespace}/leases/${name}`, message = request);
    // }
    
    // public remote function getCoordinationV1beta1APIResources() returns http:Response | error {
    //     http:Client getCoordinationV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getCoordinationV1beta1APIResourcesEp->get("/apis/coordination.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listCoordinationV1beta1LeaseForAllNamespaces() returns http:Response | error {
    //     http:Client listCoordinationV1beta1LeaseForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listCoordinationV1beta1LeaseForAllNamespacesEp->get("/apis/coordination.k8s.io/v1beta1/leases", message = request);
    // }
    
    // public remote function listCoordinationV1beta1NamespacedLease(string namespace) returns http:Response | error {
    //     http:Client listCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listCoordinationV1beta1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases`, message = request);
    // }
    
    // public remote function createCoordinationV1beta1NamespacedLease(models:'io\.k8s\.api\.coordination\.v1beta1\.Lease createCoordinationV1beta1NamespacedLeaseBody, string namespace) returns http:Response | error {
    //     http:Client createCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createCoordinationV1beta1NamespacedLeaseEp->post(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases`, request);
    // }
    
    // public remote function deleteCoordinationV1beta1CollectionNamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoordinationV1beta1CollectionNamespacedLeaseBody, string namespace) returns http:Response | error {
    //     http:Client deleteCoordinationV1beta1CollectionNamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCoordinationV1beta1CollectionNamespacedLeaseEp->delete(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases`, request);
    // }
    
    // public remote function readCoordinationV1beta1NamespacedLease(string name, string namespace) returns http:Response | error {
    //     http:Client readCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readCoordinationV1beta1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases/${name}`, message = request);
    // }
    
    // public remote function replaceCoordinationV1beta1NamespacedLease(models:'io\.k8s\.api\.coordination\.v1beta1\.Lease replaceCoordinationV1beta1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceCoordinationV1beta1NamespacedLeaseEp->put(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function deleteCoordinationV1beta1NamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteCoordinationV1beta1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteCoordinationV1beta1NamespacedLeaseEp->delete(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function patchCoordinationV1beta1NamespacedLease(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchCoordinationV1beta1NamespacedLeaseBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchCoordinationV1beta1NamespacedLeaseEp->patch(string `/apis/coordination.k8s.io/v1beta1/namespaces/${namespace}/leases/${name}`, request);
    // }
    
    // public remote function watchCoordinationV1beta1LeaseListForAllNamespaces() returns http:Response | error {
    //     http:Client watchCoordinationV1beta1LeaseListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1beta1LeaseListForAllNamespacesEp->get("/apis/coordination.k8s.io/v1beta1/watch/leases", message = request);
    // }
    
    // public remote function watchCoordinationV1beta1NamespacedLeaseList(string namespace) returns http:Response | error {
    //     http:Client watchCoordinationV1beta1NamespacedLeaseListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1beta1NamespacedLeaseListEp->get(string `/apis/coordination.k8s.io/v1beta1/watch/namespaces/${namespace}/leases`, message = request);
    // }
    
    // public remote function watchCoordinationV1beta1NamespacedLease(string name, string namespace) returns http:Response | error {
    //     http:Client watchCoordinationV1beta1NamespacedLeaseEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchCoordinationV1beta1NamespacedLeaseEp->get(string `/apis/coordination.k8s.io/v1beta1/watch/namespaces/${namespace}/leases/${name}`, message = request);
    // }
    
    // public remote function getDiscoveryAPIGroup() returns http:Response | error {
    //     http:Client getDiscoveryAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getDiscoveryAPIGroupEp->get("/apis/discovery.k8s.io/", message = request);
    // }
    
    // public remote function getDiscoveryV1beta1APIResources() returns http:Response | error {
    //     http:Client getDiscoveryV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getDiscoveryV1beta1APIResourcesEp->get("/apis/discovery.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listDiscoveryV1beta1EndpointSliceForAllNamespaces() returns http:Response | error {
    //     http:Client listDiscoveryV1beta1EndpointSliceForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listDiscoveryV1beta1EndpointSliceForAllNamespacesEp->get("/apis/discovery.k8s.io/v1beta1/endpointslices", message = request);
    // }
    
    // public remote function listDiscoveryV1beta1NamespacedEndpointSlice(string namespace) returns http:Response | error {
    //     http:Client listDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listDiscoveryV1beta1NamespacedEndpointSliceEp->get(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices`, message = request);
    // }
    
    // public remote function createDiscoveryV1beta1NamespacedEndpointSlice(models:'io\.k8s\.api\.discovery\.v1beta1\.EndpointSlice createDiscoveryV1beta1NamespacedEndpointSliceBody, string namespace) returns http:Response | error {
    //     http:Client createDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createDiscoveryV1beta1NamespacedEndpointSliceEp->post(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices`, request);
    // }
    
    // public remote function deleteDiscoveryV1beta1CollectionNamespacedEndpointSlice(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteDiscoveryV1beta1CollectionNamespacedEndpointSliceBody, string namespace) returns http:Response | error {
    //     http:Client deleteDiscoveryV1beta1CollectionNamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteDiscoveryV1beta1CollectionNamespacedEndpointSliceEp->delete(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices`, request);
    // }
    
    // public remote function readDiscoveryV1beta1NamespacedEndpointSlice(string name, string namespace) returns http:Response | error {
    //     http:Client readDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readDiscoveryV1beta1NamespacedEndpointSliceEp->get(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices/${name}`, message = request);
    // }
    
    // public remote function replaceDiscoveryV1beta1NamespacedEndpointSlice(models:'io\.k8s\.api\.discovery\.v1beta1\.EndpointSlice replaceDiscoveryV1beta1NamespacedEndpointSliceBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceDiscoveryV1beta1NamespacedEndpointSliceEp->put(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices/${name}`, request);
    // }
    
    // public remote function deleteDiscoveryV1beta1NamespacedEndpointSlice(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteDiscoveryV1beta1NamespacedEndpointSliceBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteDiscoveryV1beta1NamespacedEndpointSliceEp->delete(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices/${name}`, request);
    // }
    
    // public remote function patchDiscoveryV1beta1NamespacedEndpointSlice(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchDiscoveryV1beta1NamespacedEndpointSliceBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchDiscoveryV1beta1NamespacedEndpointSliceEp->patch(string `/apis/discovery.k8s.io/v1beta1/namespaces/${namespace}/endpointslices/${name}`, request);
    // }
    
    // public remote function watchDiscoveryV1beta1EndpointSliceListForAllNamespaces() returns http:Response | error {
    //     http:Client watchDiscoveryV1beta1EndpointSliceListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchDiscoveryV1beta1EndpointSliceListForAllNamespacesEp->get("/apis/discovery.k8s.io/v1beta1/watch/endpointslices", message = request);
    // }
    
    // public remote function watchDiscoveryV1beta1NamespacedEndpointSliceList(string namespace) returns http:Response | error {
    //     http:Client watchDiscoveryV1beta1NamespacedEndpointSliceListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchDiscoveryV1beta1NamespacedEndpointSliceListEp->get(string `/apis/discovery.k8s.io/v1beta1/watch/namespaces/${namespace}/endpointslices`, message = request);
    // }
    
    // public remote function watchDiscoveryV1beta1NamespacedEndpointSlice(string name, string namespace) returns http:Response | error {
    //     http:Client watchDiscoveryV1beta1NamespacedEndpointSliceEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchDiscoveryV1beta1NamespacedEndpointSliceEp->get(string `/apis/discovery.k8s.io/v1beta1/watch/namespaces/${namespace}/endpointslices/${name}`, message = request);
    // }
    
    // public remote function getEventsAPIGroup() returns http:Response | error {
    //     http:Client getEventsAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getEventsAPIGroupEp->get("/apis/events.k8s.io/", message = request);
    // }
    
    // public remote function getEventsV1beta1APIResources() returns http:Response | error {
    //     http:Client getEventsV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getEventsV1beta1APIResourcesEp->get("/apis/events.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listEventsV1beta1EventForAllNamespaces() returns http:Response | error {
    //     http:Client listEventsV1beta1EventForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listEventsV1beta1EventForAllNamespacesEp->get("/apis/events.k8s.io/v1beta1/events", message = request);
    // }
    
    // public remote function listEventsV1beta1NamespacedEvent(string namespace) returns http:Response | error {
    //     http:Client listEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listEventsV1beta1NamespacedEventEp->get(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events`, message = request);
    // }
    
    // public remote function createEventsV1beta1NamespacedEvent(models:'io\.k8s\.api\.events\.v1beta1\.Event createEventsV1beta1NamespacedEventBody, string namespace) returns http:Response | error {
    //     http:Client createEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createEventsV1beta1NamespacedEventEp->post(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events`, request);
    // }
    
    // public remote function deleteEventsV1beta1CollectionNamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteEventsV1beta1CollectionNamespacedEventBody, string namespace) returns http:Response | error {
    //     http:Client deleteEventsV1beta1CollectionNamespacedEventEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteEventsV1beta1CollectionNamespacedEventEp->delete(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events`, request);
    // }
    
    // public remote function readEventsV1beta1NamespacedEvent(string name, string namespace) returns http:Response | error {
    //     http:Client readEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readEventsV1beta1NamespacedEventEp->get(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events/${name}`, message = request);
    // }
    
    // public remote function replaceEventsV1beta1NamespacedEvent(models:'io\.k8s\.api\.events\.v1beta1\.Event replaceEventsV1beta1NamespacedEventBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceEventsV1beta1NamespacedEventEp->put(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events/${name}`, request);
    // }
    
    // public remote function deleteEventsV1beta1NamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteEventsV1beta1NamespacedEventBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteEventsV1beta1NamespacedEventEp->delete(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events/${name}`, request);
    // }
    
    // public remote function patchEventsV1beta1NamespacedEvent(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchEventsV1beta1NamespacedEventBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchEventsV1beta1NamespacedEventEp->patch(string `/apis/events.k8s.io/v1beta1/namespaces/${namespace}/events/${name}`, request);
    // }
    
    // public remote function watchEventsV1beta1EventListForAllNamespaces() returns http:Response | error {
    //     http:Client watchEventsV1beta1EventListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchEventsV1beta1EventListForAllNamespacesEp->get("/apis/events.k8s.io/v1beta1/watch/events", message = request);
    // }
    
    // public remote function watchEventsV1beta1NamespacedEventList(string namespace) returns http:Response | error {
    //     http:Client watchEventsV1beta1NamespacedEventListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchEventsV1beta1NamespacedEventListEp->get(string `/apis/events.k8s.io/v1beta1/watch/namespaces/${namespace}/events`, message = request);
    // }
    
    // public remote function watchEventsV1beta1NamespacedEvent(string name, string namespace) returns http:Response | error {
    //     http:Client watchEventsV1beta1NamespacedEventEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchEventsV1beta1NamespacedEventEp->get(string `/apis/events.k8s.io/v1beta1/watch/namespaces/${namespace}/events/${name}`, message = request);
    // }
    
    // public remote function getExtensionsAPIGroup() returns http:Response | error {
    //     http:Client getExtensionsAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getExtensionsAPIGroupEp->get("/apis/extensions/", message = request);
    // }
    
    // public remote function getExtensionsV1beta1APIResources() returns http:Response | error {
    //     http:Client getExtensionsV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getExtensionsV1beta1APIResourcesEp->get("/apis/extensions/v1beta1/", message = request);
    // }
    
    // public remote function listExtensionsV1beta1IngressForAllNamespaces() returns http:Response | error {
    //     http:Client listExtensionsV1beta1IngressForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listExtensionsV1beta1IngressForAllNamespacesEp->get("/apis/extensions/v1beta1/ingresses", message = request);
    // }
    
    // public remote function listExtensionsV1beta1NamespacedIngress(string namespace) returns http:Response | error {
    //     http:Client listExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listExtensionsV1beta1NamespacedIngressEp->get(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses`, message = request);
    // }
    
    // public remote function createExtensionsV1beta1NamespacedIngress(models:'io\.k8s\.api\.extensions\.v1beta1\.Ingress createExtensionsV1beta1NamespacedIngressBody, string namespace) returns http:Response | error {
    //     http:Client createExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createExtensionsV1beta1NamespacedIngressEp->post(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses`, request);
    // }
    
    // public remote function deleteExtensionsV1beta1CollectionNamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteExtensionsV1beta1CollectionNamespacedIngressBody, string namespace) returns http:Response | error {
    //     http:Client deleteExtensionsV1beta1CollectionNamespacedIngressEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteExtensionsV1beta1CollectionNamespacedIngressEp->delete(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses`, request);
    // }
    
    // public remote function readExtensionsV1beta1NamespacedIngress(string name, string namespace) returns http:Response | error {
    //     http:Client readExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readExtensionsV1beta1NamespacedIngressEp->get(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}`, message = request);
    // }
    
    // public remote function replaceExtensionsV1beta1NamespacedIngress(models:'io\.k8s\.api\.extensions\.v1beta1\.Ingress replaceExtensionsV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceExtensionsV1beta1NamespacedIngressEp->put(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    // }
    
    // public remote function deleteExtensionsV1beta1NamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteExtensionsV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
    //     http:Client deleteExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteExtensionsV1beta1NamespacedIngressEp->delete(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    // }
    
    // public remote function patchExtensionsV1beta1NamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchExtensionsV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchExtensionsV1beta1NamespacedIngressEp->patch(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    // }
    
    // public remote function readExtensionsV1beta1NamespacedIngressStatus(string name, string namespace) returns http:Response | error {
    //     http:Client readExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readExtensionsV1beta1NamespacedIngressStatusEp->get(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, message = request);
    // }
    
    // public remote function replaceExtensionsV1beta1NamespacedIngressStatus(models:'io\.k8s\.api\.extensions\.v1beta1\.Ingress replaceExtensionsV1beta1NamespacedIngressStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client replaceExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceExtensionsV1beta1NamespacedIngressStatusEp->put(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, request);
    // }
    
    // public remote function patchExtensionsV1beta1NamespacedIngressStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchExtensionsV1beta1NamespacedIngressStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchExtensionsV1beta1NamespacedIngressStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchExtensionsV1beta1NamespacedIngressStatusEp->patch(string `/apis/extensions/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, request);
    // }
    
    // public remote function watchExtensionsV1beta1IngressListForAllNamespaces() returns http:Response | error {
    //     http:Client watchExtensionsV1beta1IngressListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchExtensionsV1beta1IngressListForAllNamespacesEp->get("/apis/extensions/v1beta1/watch/ingresses", message = request);
    // }
    
    // public remote function watchExtensionsV1beta1NamespacedIngressList(string namespace) returns http:Response | error {
    //     http:Client watchExtensionsV1beta1NamespacedIngressListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchExtensionsV1beta1NamespacedIngressListEp->get(string `/apis/extensions/v1beta1/watch/namespaces/${namespace}/ingresses`, message = request);
    // }
    
    // public remote function watchExtensionsV1beta1NamespacedIngress(string name, string namespace) returns http:Response | error {
    //     http:Client watchExtensionsV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchExtensionsV1beta1NamespacedIngressEp->get(string `/apis/extensions/v1beta1/watch/namespaces/${namespace}/ingresses/${name}`, message = request);
    // }
    
    // public remote function getFlowcontrolApiserverAPIGroup() returns http:Response | error {
    //     http:Client getFlowcontrolApiserverAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getFlowcontrolApiserverAPIGroupEp->get("/apis/flowcontrol.apiserver.k8s.io/", message = request);
    // }
    
    // public remote function getFlowcontrolApiserverV1alpha1APIResources() returns http:Response | error {
    //     http:Client getFlowcontrolApiserverV1alpha1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getFlowcontrolApiserverV1alpha1APIResourcesEp->get("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/", message = request);
    // }
    
    // public remote function listFlowcontrolApiserverV1alpha1FlowSchema() returns http:Response | error {
    //     http:Client listFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listFlowcontrolApiserverV1alpha1FlowSchemaEp->get("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas", message = request);
    // }
    
    // public remote function createFlowcontrolApiserverV1alpha1FlowSchema(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchema createFlowcontrolApiserverV1alpha1FlowSchemaBody) returns http:Response | error {
    //     http:Client createFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createFlowcontrolApiserverV1alpha1FlowSchemaEp->post("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas", request);
    // }
    
    // public remote function deleteFlowcontrolApiserverV1alpha1CollectionFlowSchema(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteFlowcontrolApiserverV1alpha1CollectionFlowSchemaBody) returns http:Response | error {
    //     http:Client deleteFlowcontrolApiserverV1alpha1CollectionFlowSchemaEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteFlowcontrolApiserverV1alpha1CollectionFlowSchemaEp->delete("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas", request);
    // }
    
    // public remote function readFlowcontrolApiserverV1alpha1FlowSchema(string name) returns http:Response | error {
    //     http:Client readFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readFlowcontrolApiserverV1alpha1FlowSchemaEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}`, message = request);
    // }
    
    // public remote function replaceFlowcontrolApiserverV1alpha1FlowSchema(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchema replaceFlowcontrolApiserverV1alpha1FlowSchemaBody, string name) returns http:Response | error {
    //     http:Client replaceFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceFlowcontrolApiserverV1alpha1FlowSchemaEp->put(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}`, request);
    // }
    
    // public remote function deleteFlowcontrolApiserverV1alpha1FlowSchema(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteFlowcontrolApiserverV1alpha1FlowSchemaBody, string name) returns http:Response | error {
    //     http:Client deleteFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteFlowcontrolApiserverV1alpha1FlowSchemaEp->delete(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}`, request);
    // }
    
    // public remote function patchFlowcontrolApiserverV1alpha1FlowSchema(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchFlowcontrolApiserverV1alpha1FlowSchemaBody, string name) returns http:Response | error {
    //     http:Client patchFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchFlowcontrolApiserverV1alpha1FlowSchemaEp->patch(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}`, request);
    // }
    
    // public remote function readFlowcontrolApiserverV1alpha1FlowSchemaStatus(string name) returns http:Response | error {
    //     http:Client readFlowcontrolApiserverV1alpha1FlowSchemaStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readFlowcontrolApiserverV1alpha1FlowSchemaStatusEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}/status`, message = request);
    // }
    
    // public remote function replaceFlowcontrolApiserverV1alpha1FlowSchemaStatus(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchema replaceFlowcontrolApiserverV1alpha1FlowSchemaStatusBody, string name) returns http:Response | error {
    //     http:Client replaceFlowcontrolApiserverV1alpha1FlowSchemaStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceFlowcontrolApiserverV1alpha1FlowSchemaStatusEp->put(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}/status`, request);
    // }
    
    // public remote function patchFlowcontrolApiserverV1alpha1FlowSchemaStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchFlowcontrolApiserverV1alpha1FlowSchemaStatusBody, string name) returns http:Response | error {
    //     http:Client patchFlowcontrolApiserverV1alpha1FlowSchemaStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchFlowcontrolApiserverV1alpha1FlowSchemaStatusEp->patch(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/flowschemas/${name}/status`, request);
    // }
    
    // public remote function listFlowcontrolApiserverV1alpha1PriorityLevelConfiguration() returns http:Response | error {
    //     http:Client listFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->get("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations", message = request);
    // }
    
    // public remote function createFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfiguration createFlowcontrolApiserverV1alpha1PriorityLevelConfigurationBody) returns http:Response | error {
    //     http:Client createFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->post("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations", request);
    // }
    
    // public remote function deleteFlowcontrolApiserverV1alpha1CollectionPriorityLevelConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteFlowcontrolApiserverV1alpha1CollectionPriorityLevelConfigurationBody) returns http:Response | error {
    //     http:Client deleteFlowcontrolApiserverV1alpha1CollectionPriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteFlowcontrolApiserverV1alpha1CollectionPriorityLevelConfigurationEp->delete("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations", request);
    // }
    
    // public remote function readFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(string name) returns http:Response | error {
    //     http:Client readFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}`, message = request);
    // }
    
    // public remote function replaceFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfiguration replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationBody, string name) returns http:Response | error {
    //     http:Client replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->put(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}`, request);
    // }
    
    // public remote function deleteFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteFlowcontrolApiserverV1alpha1PriorityLevelConfigurationBody, string name) returns http:Response | error {
    //     http:Client deleteFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->delete(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}`, request);
    // }
    
    // public remote function patchFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationBody, string name) returns http:Response | error {
    //     http:Client patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->patch(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}`, request);
    // }
    
    // public remote function readFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatus(string name) returns http:Response | error {
    //     http:Client readFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}/status`, message = request);
    // }
    
    // public remote function replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatus(models:'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfiguration replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusBody, string name) returns http:Response | error {
    //     http:Client replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp->put(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}/status`, request);
    // }
    
    // public remote function patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusBody, string name) returns http:Response | error {
    //     http:Client patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationStatusEp->patch(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/prioritylevelconfigurations/${name}/status`, request);
    // }
    
    // public remote function watchFlowcontrolApiserverV1alpha1FlowSchemaList() returns http:Response | error {
    //     http:Client watchFlowcontrolApiserverV1alpha1FlowSchemaListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchFlowcontrolApiserverV1alpha1FlowSchemaListEp->get("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/watch/flowschemas", message = request);
    // }
    
    // public remote function watchFlowcontrolApiserverV1alpha1FlowSchema(string name) returns http:Response | error {
    //     http:Client watchFlowcontrolApiserverV1alpha1FlowSchemaEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchFlowcontrolApiserverV1alpha1FlowSchemaEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/watch/flowschemas/${name}`, message = request);
    // }
    
    // public remote function watchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationList() returns http:Response | error {
    //     http:Client watchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationListEp->get("/apis/flowcontrol.apiserver.k8s.io/v1alpha1/watch/prioritylevelconfigurations", message = request);
    // }
    
    // public remote function watchFlowcontrolApiserverV1alpha1PriorityLevelConfiguration(string name) returns http:Response | error {
    //     http:Client watchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchFlowcontrolApiserverV1alpha1PriorityLevelConfigurationEp->get(string `/apis/flowcontrol.apiserver.k8s.io/v1alpha1/watch/prioritylevelconfigurations/${name}`, message = request);
    // }
    
    public remote function getNetworkingAPIGroup() returns http:Response | error {
        http:Client getNetworkingAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNetworkingAPIGroupEp->get("/apis/networking.k8s.io/", message = request);
    }
    
    public remote function getNetworkingV1APIResources() returns http:Response | error {
        http:Client getNetworkingV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNetworkingV1APIResourcesEp->get("/apis/networking.k8s.io/v1/", message = request);
    }
    
    public remote function listNetworkingV1NamespacedNetworkPolicy(string namespace) returns http:Response | error {
        http:Client listNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNetworkingV1NamespacedNetworkPolicyEp->get(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies`, message = request);
    }
    
    public remote function createNetworkingV1NamespacedNetworkPolicy(models:'io\.k8s\.api\.networking\.v1\.NetworkPolicy createNetworkingV1NamespacedNetworkPolicyBody, string namespace) returns http:Response | error {
        http:Client createNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createNetworkingV1NamespacedNetworkPolicyEp->post(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies`, request);
    }
    
    public remote function deleteNetworkingV1CollectionNamespacedNetworkPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1CollectionNamespacedNetworkPolicyBody, string namespace) returns http:Response | error {
        http:Client deleteNetworkingV1CollectionNamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1CollectionNamespacedNetworkPolicyEp->delete(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies`, request);
    }
    
    public remote function readNetworkingV1NamespacedNetworkPolicy(string name, string namespace) returns http:Response | error {
        http:Client readNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNetworkingV1NamespacedNetworkPolicyEp->get(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies/${name}`, message = request);
    }
    
    public remote function replaceNetworkingV1NamespacedNetworkPolicy(models:'io\.k8s\.api\.networking\.v1\.NetworkPolicy replaceNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace) returns http:Response | error {
        http:Client replaceNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNetworkingV1NamespacedNetworkPolicyEp->put(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies/${name}`, request);
    }
    
    public remote function deleteNetworkingV1NamespacedNetworkPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace) returns http:Response | error {
        http:Client deleteNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1NamespacedNetworkPolicyEp->delete(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies/${name}`, request);
    }
    
    public remote function patchNetworkingV1NamespacedNetworkPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNetworkingV1NamespacedNetworkPolicyBody, string name, string namespace) returns http:Response | error {
        http:Client patchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNetworkingV1NamespacedNetworkPolicyEp->patch(string `/apis/networking.k8s.io/v1/namespaces/${namespace}/networkpolicies/${name}`, request);
    }
    
    public remote function listNetworkingV1NetworkPolicyForAllNamespaces() returns http:Response | error {
        http:Client listNetworkingV1NetworkPolicyForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNetworkingV1NetworkPolicyForAllNamespacesEp->get("/apis/networking.k8s.io/v1/networkpolicies", message = request);
    }
    
    // public remote function watchNetworkingV1NamespacedNetworkPolicyList(string namespace) returns http:Response | error {
    //     http:Client watchNetworkingV1NamespacedNetworkPolicyListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1NamespacedNetworkPolicyListEp->get(string `/apis/networking.k8s.io/v1/watch/namespaces/${namespace}/networkpolicies`, message = request);
    // }
    
    // public remote function watchNetworkingV1NamespacedNetworkPolicy(string name, string namespace) returns http:Response | error {
    //     http:Client watchNetworkingV1NamespacedNetworkPolicyEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1NamespacedNetworkPolicyEp->get(string `/apis/networking.k8s.io/v1/watch/namespaces/${namespace}/networkpolicies/${name}`, message = request);
    // }
    
    // public remote function watchNetworkingV1NetworkPolicyListForAllNamespaces() returns http:Response | error {
    //     http:Client watchNetworkingV1NetworkPolicyListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1NetworkPolicyListForAllNamespacesEp->get("/apis/networking.k8s.io/v1/watch/networkpolicies", message = request);
    // }
    
    public remote function getNetworkingV1beta1APIResources() returns http:Response | error {
        http:Client getNetworkingV1beta1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNetworkingV1beta1APIResourcesEp->get("/apis/networking.k8s.io/v1beta1/", message = request);
    }
    
    public remote function listNetworkingV1beta1IngressClass() returns http:Response | error {
        http:Client listNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNetworkingV1beta1IngressClassEp->get("/apis/networking.k8s.io/v1beta1/ingressclasses", message = request);
    }
    
    public remote function createNetworkingV1beta1IngressClass(models:'io\.k8s\.api\.networking\.v1beta1\.IngressClass createNetworkingV1beta1IngressClassBody) returns http:Response | error {
        http:Client createNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createNetworkingV1beta1IngressClassEp->post("/apis/networking.k8s.io/v1beta1/ingressclasses", request);
    }
    
    public remote function deleteNetworkingV1beta1CollectionIngressClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1beta1CollectionIngressClassBody) returns http:Response | error {
        http:Client deleteNetworkingV1beta1CollectionIngressClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1beta1CollectionIngressClassEp->delete("/apis/networking.k8s.io/v1beta1/ingressclasses", request);
    }
    
    public remote function readNetworkingV1beta1IngressClass(string name) returns http:Response | error {
        http:Client readNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNetworkingV1beta1IngressClassEp->get(string `/apis/networking.k8s.io/v1beta1/ingressclasses/${name}`, message = request);
    }
    
    public remote function replaceNetworkingV1beta1IngressClass(models:'io\.k8s\.api\.networking\.v1beta1\.IngressClass replaceNetworkingV1beta1IngressClassBody, string name) returns http:Response | error {
        http:Client replaceNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNetworkingV1beta1IngressClassEp->put(string `/apis/networking.k8s.io/v1beta1/ingressclasses/${name}`, request);
    }
    
    public remote function deleteNetworkingV1beta1IngressClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1beta1IngressClassBody, string name) returns http:Response | error {
        http:Client deleteNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1beta1IngressClassEp->delete(string `/apis/networking.k8s.io/v1beta1/ingressclasses/${name}`, request);
    }
    
    public remote function patchNetworkingV1beta1IngressClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNetworkingV1beta1IngressClassBody, string name) returns http:Response | error {
        http:Client patchNetworkingV1beta1IngressClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNetworkingV1beta1IngressClassEp->patch(string `/apis/networking.k8s.io/v1beta1/ingressclasses/${name}`, request);
    }
    
    public remote function listNetworkingV1beta1IngressForAllNamespaces() returns http:Response | error {
        http:Client listNetworkingV1beta1IngressForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNetworkingV1beta1IngressForAllNamespacesEp->get("/apis/networking.k8s.io/v1beta1/ingresses", message = request);
    }
    
    public remote function listNetworkingV1beta1NamespacedIngress(string namespace) returns http:Response | error {
        http:Client listNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNetworkingV1beta1NamespacedIngressEp->get(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses`, message = request);
    }
    
    public remote function createNetworkingV1beta1NamespacedIngress(models:'io\.k8s\.api\.networking\.v1beta1\.Ingress createNetworkingV1beta1NamespacedIngressBody, string namespace) returns http:Response | error {
        http:Client createNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createNetworkingV1beta1NamespacedIngressEp->post(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses`, request);
    }
    
    public remote function deleteNetworkingV1beta1CollectionNamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1beta1CollectionNamespacedIngressBody, string namespace) returns http:Response | error {
        http:Client deleteNetworkingV1beta1CollectionNamespacedIngressEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1beta1CollectionNamespacedIngressEp->delete(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses`, request);
    }
    
    public remote function readNetworkingV1beta1NamespacedIngress(string name, string namespace) returns http:Response | error {
        http:Client readNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNetworkingV1beta1NamespacedIngressEp->get(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}`, message = request);
    }
    
    public remote function replaceNetworkingV1beta1NamespacedIngress(models:'io\.k8s\.api\.networking\.v1beta1\.Ingress replaceNetworkingV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
        http:Client replaceNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNetworkingV1beta1NamespacedIngressEp->put(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    }
    
    public remote function deleteNetworkingV1beta1NamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNetworkingV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
        http:Client deleteNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNetworkingV1beta1NamespacedIngressEp->delete(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    }
    
    public remote function patchNetworkingV1beta1NamespacedIngress(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNetworkingV1beta1NamespacedIngressBody, string name, string namespace) returns http:Response | error {
        http:Client patchNetworkingV1beta1NamespacedIngressEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNetworkingV1beta1NamespacedIngressEp->patch(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}`, request);
    }
    
    public remote function readNetworkingV1beta1NamespacedIngressStatus(string name, string namespace) returns http:Response | error {
        http:Client readNetworkingV1beta1NamespacedIngressStatusEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNetworkingV1beta1NamespacedIngressStatusEp->get(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, message = request);
    }
    
    public remote function replaceNetworkingV1beta1NamespacedIngressStatus(models:'io\.k8s\.api\.networking\.v1beta1\.Ingress replaceNetworkingV1beta1NamespacedIngressStatusBody, string name, string namespace) returns http:Response | error {
        http:Client replaceNetworkingV1beta1NamespacedIngressStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNetworkingV1beta1NamespacedIngressStatusEp->put(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, request);
    }
    
    public remote function patchNetworkingV1beta1NamespacedIngressStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNetworkingV1beta1NamespacedIngressStatusBody, string name, string namespace) returns http:Response | error {
        http:Client patchNetworkingV1beta1NamespacedIngressStatusEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNetworkingV1beta1NamespacedIngressStatusEp->patch(string `/apis/networking.k8s.io/v1beta1/namespaces/${namespace}/ingresses/${name}/status`, request);
    }
    
    // public remote function watchNetworkingV1beta1IngressClassList() returns http:Response | error {
    //     http:Client watchNetworkingV1beta1IngressClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1beta1IngressClassListEp->get("/apis/networking.k8s.io/v1beta1/watch/ingressclasses", message = request);
    // }
    
    // public remote function watchNetworkingV1beta1IngressClass(string name) returns http:Response | error {
    //     http:Client watchNetworkingV1beta1IngressClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1beta1IngressClassEp->get(string `/apis/networking.k8s.io/v1beta1/watch/ingressclasses/${name}`, message = request);
    // }
    
    // public remote function watchNetworkingV1beta1IngressListForAllNamespaces() returns http:Response | error {
    //     http:Client watchNetworkingV1beta1IngressListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1beta1IngressListForAllNamespacesEp->get("/apis/networking.k8s.io/v1beta1/watch/ingresses", message = request);
    // }
    
    // public remote function watchNetworkingV1beta1NamespacedIngressList(string namespace) returns http:Response | error {
    //     http:Client watchNetworkingV1beta1NamespacedIngressListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1beta1NamespacedIngressListEp->get(string `/apis/networking.k8s.io/v1beta1/watch/namespaces/${namespace}/ingresses`, message = request);
    // }
    
    // public remote function watchNetworkingV1beta1NamespacedIngress(string name, string namespace) returns http:Response | error {
    //     http:Client watchNetworkingV1beta1NamespacedIngressEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchNetworkingV1beta1NamespacedIngressEp->get(string `/apis/networking.k8s.io/v1beta1/watch/namespaces/${namespace}/ingresses/${name}`, message = request);
    // }
    
    public remote function getNodeAPIGroup() returns http:Response | error {
        http:Client getNodeAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNodeAPIGroupEp->get("/apis/node.k8s.io/", message = request);
    }
    
    public remote function getNodeV1alpha1APIResources() returns http:Response | error {
        http:Client getNodeV1alpha1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNodeV1alpha1APIResourcesEp->get("/apis/node.k8s.io/v1alpha1/", message = request);
    }
    
    public remote function deleteNodeV1alpha1CollectionRuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNodeV1alpha1CollectionRuntimeClassBody) returns http:Response | error {
        http:Client deleteNodeV1alpha1CollectionRuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNodeV1alpha1CollectionRuntimeClassEp->delete("/apis/node.k8s.io/v1alpha1/runtimeclasses", request);
    }
    
    public remote function readNodeV1alpha1RuntimeClass(string name) returns http:Response | error {
        http:Client readNodeV1alpha1RuntimeClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNodeV1alpha1RuntimeClassEp->get(string `/apis/node.k8s.io/v1alpha1/runtimeclasses/${name}`, message = request);
    }
    
    public remote function replaceNodeV1alpha1RuntimeClass(models:'io\.k8s\.api\.node\.v1alpha1\.RuntimeClass replaceNodeV1alpha1RuntimeClassBody, string name) returns http:Response | error {
        http:Client replaceNodeV1alpha1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNodeV1alpha1RuntimeClassEp->put(string `/apis/node.k8s.io/v1alpha1/runtimeclasses/${name}`, request);
    }
    
    public remote function deleteNodeV1alpha1RuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNodeV1alpha1RuntimeClassBody, string name) returns http:Response | error {
        http:Client deleteNodeV1alpha1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNodeV1alpha1RuntimeClassEp->delete(string `/apis/node.k8s.io/v1alpha1/runtimeclasses/${name}`, request);
    }
    
    public remote function patchNodeV1alpha1RuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNodeV1alpha1RuntimeClassBody, string name) returns http:Response | error {
        http:Client patchNodeV1alpha1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNodeV1alpha1RuntimeClassEp->patch(string `/apis/node.k8s.io/v1alpha1/runtimeclasses/${name}`, request);
    }
    
    public remote function watchNodeV1alpha1RuntimeClassList() returns http:Response | error {
        http:Client watchNodeV1alpha1RuntimeClassListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchNodeV1alpha1RuntimeClassListEp->get("/apis/node.k8s.io/v1alpha1/watch/runtimeclasses", message = request);
    }
    
    public remote function watchNodeV1alpha1RuntimeClass(string name) returns http:Response | error {
        http:Client watchNodeV1alpha1RuntimeClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchNodeV1alpha1RuntimeClassEp->get(string `/apis/node.k8s.io/v1alpha1/watch/runtimeclasses/${name}`, message = request);
    }
    
    public remote function getNodeV1beta1APIResources() returns http:Response | error {
        http:Client getNodeV1beta1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getNodeV1beta1APIResourcesEp->get("/apis/node.k8s.io/v1beta1/", message = request);
    }
    
    public remote function listNodeV1beta1RuntimeClass() returns http:Response | error {
        http:Client listNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listNodeV1beta1RuntimeClassEp->get("/apis/node.k8s.io/v1beta1/runtimeclasses", message = request);
    }
    
    public remote function createNodeV1beta1RuntimeClass(models:'io\.k8s\.api\.node\.v1beta1\.RuntimeClass createNodeV1beta1RuntimeClassBody) returns http:Response | error {
        http:Client createNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createNodeV1beta1RuntimeClassEp->post("/apis/node.k8s.io/v1beta1/runtimeclasses", request);
    }
    
    public remote function deleteNodeV1beta1CollectionRuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNodeV1beta1CollectionRuntimeClassBody) returns http:Response | error {
        http:Client deleteNodeV1beta1CollectionRuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNodeV1beta1CollectionRuntimeClassEp->delete("/apis/node.k8s.io/v1beta1/runtimeclasses", request);
    }
    
    public remote function readNodeV1beta1RuntimeClass(string name) returns http:Response | error {
        http:Client readNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readNodeV1beta1RuntimeClassEp->get(string `/apis/node.k8s.io/v1beta1/runtimeclasses/${name}`, message = request);
    }
    
    public remote function replaceNodeV1beta1RuntimeClass(models:'io\.k8s\.api\.node\.v1beta1\.RuntimeClass replaceNodeV1beta1RuntimeClassBody, string name) returns http:Response | error {
        http:Client replaceNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceNodeV1beta1RuntimeClassEp->put(string `/apis/node.k8s.io/v1beta1/runtimeclasses/${name}`, request);
    }
    
    public remote function deleteNodeV1beta1RuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteNodeV1beta1RuntimeClassBody, string name) returns http:Response | error {
        http:Client deleteNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteNodeV1beta1RuntimeClassEp->delete(string `/apis/node.k8s.io/v1beta1/runtimeclasses/${name}`, request);
    }
    
    public remote function patchNodeV1beta1RuntimeClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchNodeV1beta1RuntimeClassBody, string name) returns http:Response | error {
        http:Client patchNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchNodeV1beta1RuntimeClassEp->patch(string `/apis/node.k8s.io/v1beta1/runtimeclasses/${name}`, request);
    }
    
    public remote function watchNodeV1beta1RuntimeClassList() returns http:Response | error {
        http:Client watchNodeV1beta1RuntimeClassListEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchNodeV1beta1RuntimeClassListEp->get("/apis/node.k8s.io/v1beta1/watch/runtimeclasses", message = request);
    }
    
    public remote function watchNodeV1beta1RuntimeClass(string name) returns http:Response | error {
        http:Client watchNodeV1beta1RuntimeClassEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check watchNodeV1beta1RuntimeClassEp->get(string `/apis/node.k8s.io/v1beta1/watch/runtimeclasses/${name}`, message = request);
    }
    
    // public remote function getPolicyAPIGroup() returns http:Response | error {
    //     http:Client getPolicyAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getPolicyAPIGroupEp->get("/apis/policy/", message = request);
    // }
    
    // public remote function getPolicyV1beta1APIResources() returns http:Response | error {
    //     http:Client getPolicyV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getPolicyV1beta1APIResourcesEp->get("/apis/policy/v1beta1/", message = request);
    // }
    
    // public remote function listPolicyV1beta1NamespacedPodDisruptionBudget(string namespace) returns http:Response | error {
    //     http:Client listPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets`, message = request);
    // }
    
    // public remote function createPolicyV1beta1NamespacedPodDisruptionBudget(models:'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudget createPolicyV1beta1NamespacedPodDisruptionBudgetBody, string namespace) returns http:Response | error {
    //     http:Client createPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createPolicyV1beta1NamespacedPodDisruptionBudgetEp->post(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets`, request);
    // }
    
    // public remote function deletePolicyV1beta1CollectionNamespacedPodDisruptionBudget(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetBody, string namespace) returns http:Response | error {
    //     http:Client deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deletePolicyV1beta1CollectionNamespacedPodDisruptionBudgetEp->delete(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets`, request);
    // }
    
    // public remote function readPolicyV1beta1NamespacedPodDisruptionBudget(string name, string namespace) returns http:Response | error {
    //     http:Client readPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}`, message = request);
    // }
    
    // public remote function replacePolicyV1beta1NamespacedPodDisruptionBudget(models:'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudget replacePolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace) returns http:Response | error {
    //     http:Client replacePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replacePolicyV1beta1NamespacedPodDisruptionBudgetEp->put(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}`, request);
    // }
    
    // public remote function deletePolicyV1beta1NamespacedPodDisruptionBudget(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deletePolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace) returns http:Response | error {
    //     http:Client deletePolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deletePolicyV1beta1NamespacedPodDisruptionBudgetEp->delete(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}`, request);
    // }
    
    // public remote function patchPolicyV1beta1NamespacedPodDisruptionBudget(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchPolicyV1beta1NamespacedPodDisruptionBudgetBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchPolicyV1beta1NamespacedPodDisruptionBudgetEp->patch(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}`, request);
    // }
    
    // public remote function readPolicyV1beta1NamespacedPodDisruptionBudgetStatus(string name, string namespace) returns http:Response | error {
    //     http:Client readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->get(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}/status`, message = request);
    // }
    
    // public remote function replacePolicyV1beta1NamespacedPodDisruptionBudgetStatus(models:'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudget replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replacePolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->put(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}/status`, request);
    // }
    
    // public remote function patchPolicyV1beta1NamespacedPodDisruptionBudgetStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusBody, string name, string namespace) returns http:Response | error {
    //     http:Client patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchPolicyV1beta1NamespacedPodDisruptionBudgetStatusEp->patch(string `/apis/policy/v1beta1/namespaces/${namespace}/poddisruptionbudgets/${name}/status`, request);
    // }
    
    // public remote function listPolicyV1beta1PodDisruptionBudgetForAllNamespaces() returns http:Response | error {
    //     http:Client listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listPolicyV1beta1PodDisruptionBudgetForAllNamespacesEp->get("/apis/policy/v1beta1/poddisruptionbudgets", message = request);
    // }
    
    // public remote function listPolicyV1beta1PodSecurityPolicy() returns http:Response | error {
    //     http:Client listPolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listPolicyV1beta1PodSecurityPolicyEp->get("/apis/policy/v1beta1/podsecuritypolicies", message = request);
    // }
    
    // public remote function createPolicyV1beta1PodSecurityPolicy(models:'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicy createPolicyV1beta1PodSecurityPolicyBody) returns http:Response | error {
    //     http:Client createPolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createPolicyV1beta1PodSecurityPolicyEp->post("/apis/policy/v1beta1/podsecuritypolicies", request);
    // }
    
    // public remote function deletePolicyV1beta1CollectionPodSecurityPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deletePolicyV1beta1CollectionPodSecurityPolicyBody) returns http:Response | error {
    //     http:Client deletePolicyV1beta1CollectionPodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deletePolicyV1beta1CollectionPodSecurityPolicyEp->delete("/apis/policy/v1beta1/podsecuritypolicies", request);
    // }
    
    // public remote function readPolicyV1beta1PodSecurityPolicy(string name) returns http:Response | error {
    //     http:Client readPolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readPolicyV1beta1PodSecurityPolicyEp->get(string `/apis/policy/v1beta1/podsecuritypolicies/${name}`, message = request);
    // }
    
    // public remote function replacePolicyV1beta1PodSecurityPolicy(models:'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicy replacePolicyV1beta1PodSecurityPolicyBody, string name) returns http:Response | error {
    //     http:Client replacePolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replacePolicyV1beta1PodSecurityPolicyEp->put(string `/apis/policy/v1beta1/podsecuritypolicies/${name}`, request);
    // }
    
    // public remote function deletePolicyV1beta1PodSecurityPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deletePolicyV1beta1PodSecurityPolicyBody, string name) returns http:Response | error {
    //     http:Client deletePolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deletePolicyV1beta1PodSecurityPolicyEp->delete(string `/apis/policy/v1beta1/podsecuritypolicies/${name}`, request);
    // }
    
    // public remote function patchPolicyV1beta1PodSecurityPolicy(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchPolicyV1beta1PodSecurityPolicyBody, string name) returns http:Response | error {
    //     http:Client patchPolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchPolicyV1beta1PodSecurityPolicyEp->patch(string `/apis/policy/v1beta1/podsecuritypolicies/${name}`, request);
    // }
    
    // public remote function watchPolicyV1beta1NamespacedPodDisruptionBudgetList(string namespace) returns http:Response | error {
    //     http:Client watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchPolicyV1beta1NamespacedPodDisruptionBudgetListEp->get(string `/apis/policy/v1beta1/watch/namespaces/${namespace}/poddisruptionbudgets`, message = request);
    // }
    
    // public remote function watchPolicyV1beta1NamespacedPodDisruptionBudget(string name, string namespace) returns http:Response | error {
    //     http:Client watchPolicyV1beta1NamespacedPodDisruptionBudgetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchPolicyV1beta1NamespacedPodDisruptionBudgetEp->get(string `/apis/policy/v1beta1/watch/namespaces/${namespace}/poddisruptionbudgets/${name}`, message = request);
    // }
    
    // public remote function watchPolicyV1beta1PodDisruptionBudgetListForAllNamespaces() returns http:Response | error {
    //     http:Client watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchPolicyV1beta1PodDisruptionBudgetListForAllNamespacesEp->get("/apis/policy/v1beta1/watch/poddisruptionbudgets", message = request);
    // }
    
    // public remote function watchPolicyV1beta1PodSecurityPolicyList() returns http:Response | error {
    //     http:Client watchPolicyV1beta1PodSecurityPolicyListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchPolicyV1beta1PodSecurityPolicyListEp->get("/apis/policy/v1beta1/watch/podsecuritypolicies", message = request);
    // }
    
    // public remote function watchPolicyV1beta1PodSecurityPolicy(string name) returns http:Response | error {
    //     http:Client watchPolicyV1beta1PodSecurityPolicyEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchPolicyV1beta1PodSecurityPolicyEp->get(string `/apis/policy/v1beta1/watch/podsecuritypolicies/${name}`, message = request);
    // }
    
    public remote function getRbacAuthorizationAPIGroup() returns http:Response | error {
        http:Client getRbacAuthorizationAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getRbacAuthorizationAPIGroupEp->get("/apis/rbac.authorization.k8s.io/", message = request);
    }
    
    public remote function getRbacAuthorizationV1APIResources() returns http:Response | error {
        http:Client getRbacAuthorizationV1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getRbacAuthorizationV1APIResourcesEp->get("/apis/rbac.authorization.k8s.io/v1/", message = request);
    }
    
    public remote function listRbacAuthorizationV1ClusterRoleBinding() returns http:Response | error {
        http:Client listRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", message = request);
    }
    
    public remote function createRbacAuthorizationV1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1\.ClusterRoleBinding createRbacAuthorizationV1ClusterRoleBindingBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1ClusterRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", request);
    }
    
    public remote function deleteRbacAuthorizationV1CollectionClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1CollectionClusterRoleBindingBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1CollectionClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1CollectionClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterrolebindings", request);
    }
    
    public remote function readRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1\.ClusterRoleBinding replaceRbacAuthorizationV1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1ClusterRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1ClusterRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1ClusterRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1ClusterRole() returns http:Response | error {
        http:Client listRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1/clusterroles", message = request);
    }
    
    public remote function createRbacAuthorizationV1ClusterRole(models:'io\.k8s\.api\.rbac\.v1\.ClusterRole createRbacAuthorizationV1ClusterRoleBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1ClusterRoleEp->post("/apis/rbac.authorization.k8s.io/v1/clusterroles", request);
    }
    
    public remote function deleteRbacAuthorizationV1CollectionClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1CollectionClusterRoleBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1CollectionClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1CollectionClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1/clusterroles", request);
    }
    
    public remote function readRbacAuthorizationV1ClusterRole(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1/clusterroles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1ClusterRole(models:'io\.k8s\.api\.rbac\.v1\.ClusterRole replaceRbacAuthorizationV1ClusterRoleBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1ClusterRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1/clusterroles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1ClusterRoleBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1ClusterRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1/clusterroles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1ClusterRoleBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1ClusterRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1/clusterroles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1NamespacedRoleBinding(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings`, message = request);
    }
    
    public remote function createRbacAuthorizationV1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1\.RoleBinding createRbacAuthorizationV1NamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1NamespacedRoleBindingEp->post(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function deleteRbacAuthorizationV1CollectionNamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1CollectionNamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1CollectionNamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function readRbacAuthorizationV1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1\.RoleBinding replaceRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1NamespacedRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1NamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1NamespacedRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1NamespacedRole(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles`, message = request);
    }
    
    public remote function createRbacAuthorizationV1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1\.Role createRbacAuthorizationV1NamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1NamespacedRoleEp->post(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function deleteRbacAuthorizationV1CollectionNamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1CollectionNamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1CollectionNamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1CollectionNamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function readRbacAuthorizationV1NamespacedRole(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1\.Role replaceRbacAuthorizationV1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1NamespacedRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1NamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1NamespacedRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1RoleBindingForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1RoleBindingForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1RoleBindingForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/rolebindings", message = request);
    }
    
    public remote function listRbacAuthorizationV1RoleForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1RoleForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1RoleForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/roles", message = request);
    }
    
    // public remote function watchRbacAuthorizationV1ClusterRoleBindingList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1ClusterRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1ClusterRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1ClusterRoleBinding(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1ClusterRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1ClusterRoleList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1ClusterRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1ClusterRoleListEp->get("/apis/rbac.authorization.k8s.io/v1/watch/clusterroles", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1ClusterRole(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1ClusterRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/clusterroles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1NamespacedRoleBindingList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1NamespacedRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1NamespacedRoleBindingListEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/namespaces/${namespace}/rolebindings`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1NamespacedRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/namespaces/${namespace}/rolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1NamespacedRoleList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1NamespacedRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1NamespacedRoleListEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/namespaces/${namespace}/roles`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1NamespacedRole(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1NamespacedRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1/watch/namespaces/${namespace}/roles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1RoleBindingListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1RoleBindingListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/watch/rolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1RoleListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1RoleListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1RoleListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1/watch/roles", message = request);
    // }
    
    public remote function getRbacAuthorizationV1alpha1APIResources() returns http:Response | error {
        http:Client getRbacAuthorizationV1alpha1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getRbacAuthorizationV1alpha1APIResourcesEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/", message = request);
    }
    
    public remote function listRbacAuthorizationV1alpha1ClusterRoleBinding() returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings", message = request);
    }
    
    public remote function createRbacAuthorizationV1alpha1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleBinding createRbacAuthorizationV1alpha1ClusterRoleBindingBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1alpha1ClusterRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings", request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1CollectionClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1CollectionClusterRoleBindingBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1CollectionClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1CollectionClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings", request);
    }
    
    public remote function readRbacAuthorizationV1alpha1ClusterRoleBinding(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1alpha1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1alpha1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleBinding replaceRbacAuthorizationV1alpha1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1alpha1ClusterRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1ClusterRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1alpha1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1alpha1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1alpha1ClusterRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterrolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1alpha1ClusterRole() returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles", message = request);
    }
    
    public remote function createRbacAuthorizationV1alpha1ClusterRole(models:'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRole createRbacAuthorizationV1alpha1ClusterRoleBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1alpha1ClusterRoleEp->post("/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles", request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1CollectionClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1CollectionClusterRoleBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1CollectionClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1CollectionClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles", request);
    }
    
    public remote function readRbacAuthorizationV1alpha1ClusterRole(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1alpha1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1alpha1ClusterRole(models:'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRole replaceRbacAuthorizationV1alpha1ClusterRoleBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1alpha1ClusterRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1ClusterRoleBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1ClusterRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1alpha1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1alpha1ClusterRoleBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1alpha1ClusterRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1alpha1/clusterroles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1alpha1NamespacedRoleBinding(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings`, message = request);
    }
    
    public remote function createRbacAuthorizationV1alpha1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1alpha1\.RoleBinding createRbacAuthorizationV1alpha1NamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1alpha1NamespacedRoleBindingEp->post(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function readRbacAuthorizationV1alpha1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1alpha1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1alpha1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1alpha1\.RoleBinding replaceRbacAuthorizationV1alpha1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1alpha1NamespacedRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1NamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1alpha1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1alpha1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1alpha1NamespacedRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1alpha1NamespacedRole(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles`, message = request);
    }
    
    public remote function createRbacAuthorizationV1alpha1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1alpha1\.Role createRbacAuthorizationV1alpha1NamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1alpha1NamespacedRoleEp->post(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1CollectionNamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1CollectionNamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function readRbacAuthorizationV1alpha1NamespacedRole(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1alpha1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1alpha1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1alpha1\.Role replaceRbacAuthorizationV1alpha1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1alpha1NamespacedRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1alpha1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1alpha1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1alpha1NamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1alpha1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1alpha1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1alpha1NamespacedRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1alpha1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1alpha1RoleBindingForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1RoleBindingForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1RoleBindingForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/rolebindings", message = request);
    }
    
    public remote function listRbacAuthorizationV1alpha1RoleForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1alpha1RoleForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1alpha1RoleForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/roles", message = request);
    }
    
    // public remote function watchRbacAuthorizationV1alpha1ClusterRoleBindingList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1ClusterRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1ClusterRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/watch/clusterrolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1ClusterRoleBinding(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1ClusterRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/clusterrolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1ClusterRoleList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1ClusterRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1ClusterRoleListEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/watch/clusterroles", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1ClusterRole(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1ClusterRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/clusterroles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1NamespacedRoleBindingList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1NamespacedRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1NamespacedRoleBindingListEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/namespaces/${namespace}/rolebindings`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1NamespacedRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/namespaces/${namespace}/rolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1NamespacedRoleList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1NamespacedRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1NamespacedRoleListEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/namespaces/${namespace}/roles`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1NamespacedRole(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1NamespacedRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1alpha1/watch/namespaces/${namespace}/roles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1RoleBindingListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1RoleBindingListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1RoleBindingListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/watch/rolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1alpha1RoleListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1alpha1RoleListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1alpha1RoleListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1alpha1/watch/roles", message = request);
    // }
    
    public remote function getRbacAuthorizationV1beta1APIResources() returns http:Response | error {
        http:Client getRbacAuthorizationV1beta1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getRbacAuthorizationV1beta1APIResourcesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/", message = request);
    }
    
    public remote function listRbacAuthorizationV1beta1ClusterRoleBinding() returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1ClusterRoleBindingEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", message = request);
    }
    
    public remote function createRbacAuthorizationV1beta1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleBinding createRbacAuthorizationV1beta1ClusterRoleBindingBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1beta1ClusterRoleBindingEp->post("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1CollectionClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1CollectionClusterRoleBindingEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings", request);
    }
    
    public remote function readRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1beta1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1beta1ClusterRoleBinding(models:'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleBinding replaceRbacAuthorizationV1beta1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1beta1ClusterRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1ClusterRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1beta1ClusterRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1beta1ClusterRoleBindingBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1beta1ClusterRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterrolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1beta1ClusterRole() returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1ClusterRoleEp->get("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", message = request);
    }
    
    public remote function createRbacAuthorizationV1beta1ClusterRole(models:'io\.k8s\.api\.rbac\.v1beta1\.ClusterRole createRbacAuthorizationV1beta1ClusterRoleBody) returns http:Response | error {
        http:Client createRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1beta1ClusterRoleEp->post("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1CollectionClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1CollectionClusterRoleBody) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1CollectionClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1CollectionClusterRoleEp->delete("/apis/rbac.authorization.k8s.io/v1beta1/clusterroles", request);
    }
    
    public remote function readRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response | error {
        http:Client readRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1beta1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1beta1ClusterRole(models:'io\.k8s\.api\.rbac\.v1beta1\.ClusterRole replaceRbacAuthorizationV1beta1ClusterRoleBody, string name) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1beta1ClusterRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1ClusterRoleBody, string name) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1ClusterRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1beta1ClusterRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1beta1ClusterRoleBody, string name) returns http:Response | error {
        http:Client patchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1beta1ClusterRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1beta1/clusterroles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1beta1NamespacedRoleBinding(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings`, message = request);
    }
    
    public remote function createRbacAuthorizationV1beta1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1beta1\.RoleBinding createRbacAuthorizationV1beta1NamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1beta1NamespacedRoleBindingEp->post(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings`, request);
    }
    
    public remote function readRbacAuthorizationV1beta1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1beta1NamespacedRoleBinding(models:'io\.k8s\.api\.rbac\.v1beta1\.RoleBinding replaceRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1beta1NamespacedRoleBindingEp->put(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1NamespacedRoleBindingEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1beta1NamespacedRoleBinding(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1beta1NamespacedRoleBindingBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1beta1NamespacedRoleBindingEp->patch(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/rolebindings/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1beta1NamespacedRole(string namespace) returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles`, message = request);
    }
    
    public remote function createRbacAuthorizationV1beta1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1beta1\.Role createRbacAuthorizationV1beta1NamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client createRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createRbacAuthorizationV1beta1NamespacedRoleEp->post(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1CollectionNamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1CollectionNamespacedRoleBody, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1CollectionNamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles`, request);
    }
    
    public remote function readRbacAuthorizationV1beta1NamespacedRole(string name, string namespace) returns http:Response | error {
        http:Client readRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readRbacAuthorizationV1beta1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles/${name}`, message = request);
    }
    
    public remote function replaceRbacAuthorizationV1beta1NamespacedRole(models:'io\.k8s\.api\.rbac\.v1beta1\.Role replaceRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client replaceRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceRbacAuthorizationV1beta1NamespacedRoleEp->put(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function deleteRbacAuthorizationV1beta1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client deleteRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteRbacAuthorizationV1beta1NamespacedRoleEp->delete(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function patchRbacAuthorizationV1beta1NamespacedRole(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchRbacAuthorizationV1beta1NamespacedRoleBody, string name, string namespace) returns http:Response | error {
        http:Client patchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchRbacAuthorizationV1beta1NamespacedRoleEp->patch(string `/apis/rbac.authorization.k8s.io/v1beta1/namespaces/${namespace}/roles/${name}`, request);
    }
    
    public remote function listRbacAuthorizationV1beta1RoleBindingForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1RoleBindingForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/rolebindings", message = request);
    }
    
    public remote function listRbacAuthorizationV1beta1RoleForAllNamespaces() returns http:Response | error {
        http:Client listRbacAuthorizationV1beta1RoleForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listRbacAuthorizationV1beta1RoleForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/roles", message = request);
    }
    
    // public remote function watchRbacAuthorizationV1beta1ClusterRoleBindingList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1ClusterRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1ClusterRoleBindingListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterrolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1ClusterRoleBinding(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1ClusterRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1ClusterRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterrolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1ClusterRoleList() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1ClusterRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1ClusterRoleListEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterroles", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1ClusterRole(string name) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1ClusterRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1ClusterRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/clusterroles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1NamespacedRoleBindingList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1NamespacedRoleBindingListEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/${namespace}/rolebindings`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1NamespacedRoleBinding(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1NamespacedRoleBindingEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1NamespacedRoleBindingEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/${namespace}/rolebindings/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1NamespacedRoleList(string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1NamespacedRoleListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1NamespacedRoleListEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/${namespace}/roles`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1NamespacedRole(string name, string namespace) returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1NamespacedRoleEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1NamespacedRoleEp->get(string `/apis/rbac.authorization.k8s.io/v1beta1/watch/namespaces/${namespace}/roles/${name}`, message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1RoleBindingListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1RoleBindingListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/rolebindings", message = request);
    // }
    
    // public remote function watchRbacAuthorizationV1beta1RoleListForAllNamespaces() returns http:Response | error {
    //     http:Client watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchRbacAuthorizationV1beta1RoleListForAllNamespacesEp->get("/apis/rbac.authorization.k8s.io/v1beta1/watch/roles", message = request);
    // }
    
    // public remote function getSchedulingAPIGroup() returns http:Response | error {
    //     http:Client getSchedulingAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getSchedulingAPIGroupEp->get("/apis/scheduling.k8s.io/", message = request);
    // }
    
    // public remote function getSchedulingV1APIResources() returns http:Response | error {
    //     http:Client getSchedulingV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getSchedulingV1APIResourcesEp->get("/apis/scheduling.k8s.io/v1/", message = request);
    // }
    
    // public remote function listSchedulingV1PriorityClass() returns http:Response | error {
    //     http:Client listSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listSchedulingV1PriorityClassEp->get("/apis/scheduling.k8s.io/v1/priorityclasses", message = request);
    // }
    
    // public remote function createSchedulingV1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1\.PriorityClass createSchedulingV1PriorityClassBody) returns http:Response | error {
    //     http:Client createSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createSchedulingV1PriorityClassEp->post("/apis/scheduling.k8s.io/v1/priorityclasses", request);
    // }
    
    // public remote function deleteSchedulingV1CollectionPriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1CollectionPriorityClassBody) returns http:Response | error {
    //     http:Client deleteSchedulingV1CollectionPriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1CollectionPriorityClassEp->delete("/apis/scheduling.k8s.io/v1/priorityclasses", request);
    // }
    
    // public remote function readSchedulingV1PriorityClass(string name) returns http:Response | error {
    //     http:Client readSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readSchedulingV1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1/priorityclasses/${name}`, message = request);
    // }
    
    // public remote function replaceSchedulingV1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1\.PriorityClass replaceSchedulingV1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client replaceSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceSchedulingV1PriorityClassEp->put(string `/apis/scheduling.k8s.io/v1/priorityclasses/${name}`, request);
    // }
    
    // public remote function deleteSchedulingV1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client deleteSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1PriorityClassEp->delete(string `/apis/scheduling.k8s.io/v1/priorityclasses/${name}`, request);
    // }
    
    // public remote function patchSchedulingV1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchSchedulingV1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client patchSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchSchedulingV1PriorityClassEp->patch(string `/apis/scheduling.k8s.io/v1/priorityclasses/${name}`, request);
    // }
    
    // public remote function watchSchedulingV1PriorityClassList() returns http:Response | error {
    //     http:Client watchSchedulingV1PriorityClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1PriorityClassListEp->get("/apis/scheduling.k8s.io/v1/watch/priorityclasses", message = request);
    // }
    
    // public remote function watchSchedulingV1PriorityClass(string name) returns http:Response | error {
    //     http:Client watchSchedulingV1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1/watch/priorityclasses/${name}`, message = request);
    // }
    
    // public remote function getSchedulingV1alpha1APIResources() returns http:Response | error {
    //     http:Client getSchedulingV1alpha1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getSchedulingV1alpha1APIResourcesEp->get("/apis/scheduling.k8s.io/v1alpha1/", message = request);
    // }
    
    // public remote function listSchedulingV1alpha1PriorityClass() returns http:Response | error {
    //     http:Client listSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listSchedulingV1alpha1PriorityClassEp->get("/apis/scheduling.k8s.io/v1alpha1/priorityclasses", message = request);
    // }
    
    // public remote function createSchedulingV1alpha1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1alpha1\.PriorityClass createSchedulingV1alpha1PriorityClassBody) returns http:Response | error {
    //     http:Client createSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createSchedulingV1alpha1PriorityClassEp->post("/apis/scheduling.k8s.io/v1alpha1/priorityclasses", request);
    // }
    
    // public remote function deleteSchedulingV1alpha1CollectionPriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1alpha1CollectionPriorityClassBody) returns http:Response | error {
    //     http:Client deleteSchedulingV1alpha1CollectionPriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1alpha1CollectionPriorityClassEp->delete("/apis/scheduling.k8s.io/v1alpha1/priorityclasses", request);
    // }
    
    // public remote function readSchedulingV1alpha1PriorityClass(string name) returns http:Response | error {
    //     http:Client readSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readSchedulingV1alpha1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1alpha1/priorityclasses/${name}`, message = request);
    // }
    
    // public remote function replaceSchedulingV1alpha1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1alpha1\.PriorityClass replaceSchedulingV1alpha1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client replaceSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceSchedulingV1alpha1PriorityClassEp->put(string `/apis/scheduling.k8s.io/v1alpha1/priorityclasses/${name}`, request);
    // }
    
    // public remote function deleteSchedulingV1alpha1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1alpha1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client deleteSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1alpha1PriorityClassEp->delete(string `/apis/scheduling.k8s.io/v1alpha1/priorityclasses/${name}`, request);
    // }
    
    // public remote function patchSchedulingV1alpha1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchSchedulingV1alpha1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client patchSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchSchedulingV1alpha1PriorityClassEp->patch(string `/apis/scheduling.k8s.io/v1alpha1/priorityclasses/${name}`, request);
    // }
    
    // public remote function watchSchedulingV1alpha1PriorityClassList() returns http:Response | error {
    //     http:Client watchSchedulingV1alpha1PriorityClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1alpha1PriorityClassListEp->get("/apis/scheduling.k8s.io/v1alpha1/watch/priorityclasses", message = request);
    // }
    
    // public remote function watchSchedulingV1alpha1PriorityClass(string name) returns http:Response | error {
    //     http:Client watchSchedulingV1alpha1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1alpha1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1alpha1/watch/priorityclasses/${name}`, message = request);
    // }
    
    // public remote function getSchedulingV1beta1APIResources() returns http:Response | error {
    //     http:Client getSchedulingV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getSchedulingV1beta1APIResourcesEp->get("/apis/scheduling.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listSchedulingV1beta1PriorityClass() returns http:Response | error {
    //     http:Client listSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listSchedulingV1beta1PriorityClassEp->get("/apis/scheduling.k8s.io/v1beta1/priorityclasses", message = request);
    // }
    
    // public remote function createSchedulingV1beta1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1beta1\.PriorityClass createSchedulingV1beta1PriorityClassBody) returns http:Response | error {
    //     http:Client createSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createSchedulingV1beta1PriorityClassEp->post("/apis/scheduling.k8s.io/v1beta1/priorityclasses", request);
    // }
    
    // public remote function deleteSchedulingV1beta1CollectionPriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1beta1CollectionPriorityClassBody) returns http:Response | error {
    //     http:Client deleteSchedulingV1beta1CollectionPriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1beta1CollectionPriorityClassEp->delete("/apis/scheduling.k8s.io/v1beta1/priorityclasses", request);
    // }
    
    // public remote function readSchedulingV1beta1PriorityClass(string name) returns http:Response | error {
    //     http:Client readSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readSchedulingV1beta1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1beta1/priorityclasses/${name}`, message = request);
    // }
    
    // public remote function replaceSchedulingV1beta1PriorityClass(models:'io\.k8s\.api\.scheduling\.v1beta1\.PriorityClass replaceSchedulingV1beta1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client replaceSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceSchedulingV1beta1PriorityClassEp->put(string `/apis/scheduling.k8s.io/v1beta1/priorityclasses/${name}`, request);
    // }
    
    // public remote function deleteSchedulingV1beta1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSchedulingV1beta1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client deleteSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteSchedulingV1beta1PriorityClassEp->delete(string `/apis/scheduling.k8s.io/v1beta1/priorityclasses/${name}`, request);
    // }
    
    // public remote function patchSchedulingV1beta1PriorityClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchSchedulingV1beta1PriorityClassBody, string name) returns http:Response | error {
    //     http:Client patchSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchSchedulingV1beta1PriorityClassEp->patch(string `/apis/scheduling.k8s.io/v1beta1/priorityclasses/${name}`, request);
    // }
    
    // public remote function watchSchedulingV1beta1PriorityClassList() returns http:Response | error {
    //     http:Client watchSchedulingV1beta1PriorityClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1beta1PriorityClassListEp->get("/apis/scheduling.k8s.io/v1beta1/watch/priorityclasses", message = request);
    // }
    
    // public remote function watchSchedulingV1beta1PriorityClass(string name) returns http:Response | error {
    //     http:Client watchSchedulingV1beta1PriorityClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSchedulingV1beta1PriorityClassEp->get(string `/apis/scheduling.k8s.io/v1beta1/watch/priorityclasses/${name}`, message = request);
    // }
    
    public remote function getSettingsAPIGroup() returns http:Response | error {
        http:Client getSettingsAPIGroupEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getSettingsAPIGroupEp->get("/apis/settings.k8s.io/", message = request);
    }
    
    public remote function getSettingsV1alpha1APIResources() returns http:Response | error {
        http:Client getSettingsV1alpha1APIResourcesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getSettingsV1alpha1APIResourcesEp->get("/apis/settings.k8s.io/v1alpha1/", message = request);
    }
    
    public remote function listSettingsV1alpha1NamespacedPodPreset(string namespace) returns http:Response | error {
        http:Client listSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listSettingsV1alpha1NamespacedPodPresetEp->get(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets`, message = request);
    }
    
    public remote function createSettingsV1alpha1NamespacedPodPreset(models:'io\.k8s\.api\.settings\.v1alpha1\.PodPreset createSettingsV1alpha1NamespacedPodPresetBody, string namespace) returns http:Response | error {
        http:Client createSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check createSettingsV1alpha1NamespacedPodPresetEp->post(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets`, request);
    }
    
    public remote function deleteSettingsV1alpha1CollectionNamespacedPodPreset(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSettingsV1alpha1CollectionNamespacedPodPresetBody, string namespace) returns http:Response | error {
        http:Client deleteSettingsV1alpha1CollectionNamespacedPodPresetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteSettingsV1alpha1CollectionNamespacedPodPresetEp->delete(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets`, request);
    }
    
    public remote function readSettingsV1alpha1NamespacedPodPreset(string name, string namespace) returns http:Response | error {
        http:Client readSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check readSettingsV1alpha1NamespacedPodPresetEp->get(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets/${name}`, message = request);
    }
    
    public remote function replaceSettingsV1alpha1NamespacedPodPreset(models:'io\.k8s\.api\.settings\.v1alpha1\.PodPreset replaceSettingsV1alpha1NamespacedPodPresetBody, string name, string namespace) returns http:Response | error {
        http:Client replaceSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check replaceSettingsV1alpha1NamespacedPodPresetEp->put(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets/${name}`, request);
    }
    
    public remote function deleteSettingsV1alpha1NamespacedPodPreset(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteSettingsV1alpha1NamespacedPodPresetBody, string name, string namespace) returns http:Response | error {
        http:Client deleteSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check deleteSettingsV1alpha1NamespacedPodPresetEp->delete(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets/${name}`, request);
    }
    
    public remote function patchSettingsV1alpha1NamespacedPodPreset(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchSettingsV1alpha1NamespacedPodPresetBody, string name, string namespace) returns http:Response | error {
        http:Client patchSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
        http:Request request = new;
        

        // TODO: Update the request as needed
        return check patchSettingsV1alpha1NamespacedPodPresetEp->patch(string `/apis/settings.k8s.io/v1alpha1/namespaces/${namespace}/podpresets/${name}`, request);
    }
    
    public remote function listSettingsV1alpha1PodPresetForAllNamespaces() returns http:Response | error {
        http:Client listSettingsV1alpha1PodPresetForAllNamespacesEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check listSettingsV1alpha1PodPresetForAllNamespacesEp->get("/apis/settings.k8s.io/v1alpha1/podpresets", message = request);
    }
    
    // public remote function watchSettingsV1alpha1NamespacedPodPresetList(string namespace) returns http:Response | error {
    //     http:Client watchSettingsV1alpha1NamespacedPodPresetListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSettingsV1alpha1NamespacedPodPresetListEp->get(string `/apis/settings.k8s.io/v1alpha1/watch/namespaces/${namespace}/podpresets`, message = request);
    // }
    
    // public remote function watchSettingsV1alpha1NamespacedPodPreset(string name, string namespace) returns http:Response | error {
    //     http:Client watchSettingsV1alpha1NamespacedPodPresetEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSettingsV1alpha1NamespacedPodPresetEp->get(string `/apis/settings.k8s.io/v1alpha1/watch/namespaces/${namespace}/podpresets/${name}`, message = request);
    // }
    
    // public remote function watchSettingsV1alpha1PodPresetListForAllNamespaces() returns http:Response | error {
    //     http:Client watchSettingsV1alpha1PodPresetListForAllNamespacesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchSettingsV1alpha1PodPresetListForAllNamespacesEp->get("/apis/settings.k8s.io/v1alpha1/watch/podpresets", message = request);
    // }
    
    // public remote function getStorageAPIGroup() returns http:Response | error {
    //     http:Client getStorageAPIGroupEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getStorageAPIGroupEp->get("/apis/storage.k8s.io/", message = request);
    // }
    
    // public remote function getStorageV1APIResources() returns http:Response | error {
    //     http:Client getStorageV1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getStorageV1APIResourcesEp->get("/apis/storage.k8s.io/v1/", message = request);
    // }
    
    // public remote function listStorageV1CSIDriver() returns http:Response | error {
    //     http:Client listStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1CSIDriverEp->get("/apis/storage.k8s.io/v1/csidrivers", message = request);
    // }
    
    // public remote function createStorageV1CSIDriver(models:'io\.k8s\.api\.storage\.v1\.CSIDriver createStorageV1CSIDriverBody) returns http:Response | error {
    //     http:Client createStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1CSIDriverEp->post("/apis/storage.k8s.io/v1/csidrivers", request);
    // }
    
    // public remote function deleteStorageV1CollectionCSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CollectionCSIDriverBody) returns http:Response | error {
    //     http:Client deleteStorageV1CollectionCSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CollectionCSIDriverEp->delete("/apis/storage.k8s.io/v1/csidrivers", request);
    // }
    
    // public remote function readStorageV1CSIDriver(string name) returns http:Response | error {
    //     http:Client readStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1CSIDriverEp->get(string `/apis/storage.k8s.io/v1/csidrivers/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1CSIDriver(models:'io\.k8s\.api\.storage\.v1\.CSIDriver replaceStorageV1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1CSIDriverEp->put(string `/apis/storage.k8s.io/v1/csidrivers/${name}`, request);
    // }
    
    // public remote function deleteStorageV1CSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CSIDriverEp->delete(string `/apis/storage.k8s.io/v1/csidrivers/${name}`, request);
    // }
    
    // public remote function patchStorageV1CSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1CSIDriverEp->patch(string `/apis/storage.k8s.io/v1/csidrivers/${name}`, request);
    // }
    
    // public remote function listStorageV1CSINode() returns http:Response | error {
    //     http:Client listStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1CSINodeEp->get("/apis/storage.k8s.io/v1/csinodes", message = request);
    // }
    
    // public remote function createStorageV1CSINode(models:'io\.k8s\.api\.storage\.v1\.CSINode createStorageV1CSINodeBody) returns http:Response | error {
    //     http:Client createStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1CSINodeEp->post("/apis/storage.k8s.io/v1/csinodes", request);
    // }
    
    // public remote function deleteStorageV1CollectionCSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CollectionCSINodeBody) returns http:Response | error {
    //     http:Client deleteStorageV1CollectionCSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CollectionCSINodeEp->delete("/apis/storage.k8s.io/v1/csinodes", request);
    // }
    
    // public remote function readStorageV1CSINode(string name) returns http:Response | error {
    //     http:Client readStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1CSINodeEp->get(string `/apis/storage.k8s.io/v1/csinodes/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1CSINode(models:'io\.k8s\.api\.storage\.v1\.CSINode replaceStorageV1CSINodeBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1CSINodeEp->put(string `/apis/storage.k8s.io/v1/csinodes/${name}`, request);
    // }
    
    // public remote function deleteStorageV1CSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CSINodeBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CSINodeEp->delete(string `/apis/storage.k8s.io/v1/csinodes/${name}`, request);
    // }
    
    // public remote function patchStorageV1CSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1CSINodeBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1CSINodeEp->patch(string `/apis/storage.k8s.io/v1/csinodes/${name}`, request);
    // }
    
    // public remote function listStorageV1StorageClass() returns http:Response | error {
    //     http:Client listStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1StorageClassEp->get("/apis/storage.k8s.io/v1/storageclasses", message = request);
    // }
    
    // public remote function createStorageV1StorageClass(models:'io\.k8s\.api\.storage\.v1\.StorageClass createStorageV1StorageClassBody) returns http:Response | error {
    //     http:Client createStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1StorageClassEp->post("/apis/storage.k8s.io/v1/storageclasses", request);
    // }
    
    // public remote function deleteStorageV1CollectionStorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CollectionStorageClassBody) returns http:Response | error {
    //     http:Client deleteStorageV1CollectionStorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CollectionStorageClassEp->delete("/apis/storage.k8s.io/v1/storageclasses", request);
    // }
    
    // public remote function readStorageV1StorageClass(string name) returns http:Response | error {
    //     http:Client readStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1StorageClassEp->get(string `/apis/storage.k8s.io/v1/storageclasses/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1StorageClass(models:'io\.k8s\.api\.storage\.v1\.StorageClass replaceStorageV1StorageClassBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1StorageClassEp->put(string `/apis/storage.k8s.io/v1/storageclasses/${name}`, request);
    // }
    
    // public remote function deleteStorageV1StorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1StorageClassBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1StorageClassEp->delete(string `/apis/storage.k8s.io/v1/storageclasses/${name}`, request);
    // }
    
    // public remote function patchStorageV1StorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1StorageClassBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1StorageClassEp->patch(string `/apis/storage.k8s.io/v1/storageclasses/${name}`, request);
    // }
    
    // public remote function listStorageV1VolumeAttachment() returns http:Response | error {
    //     http:Client listStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1/volumeattachments", message = request);
    // }
    
    // public remote function createStorageV1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1\.VolumeAttachment createStorageV1VolumeAttachmentBody) returns http:Response | error {
    //     http:Client createStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1VolumeAttachmentEp->post("/apis/storage.k8s.io/v1/volumeattachments", request);
    // }
    
    // public remote function deleteStorageV1CollectionVolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1CollectionVolumeAttachmentBody) returns http:Response | error {
    //     http:Client deleteStorageV1CollectionVolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1CollectionVolumeAttachmentEp->delete("/apis/storage.k8s.io/v1/volumeattachments", request);
    // }
    
    // public remote function readStorageV1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client readStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1/volumeattachments/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1\.VolumeAttachment replaceStorageV1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1VolumeAttachmentEp->put(string `/apis/storage.k8s.io/v1/volumeattachments/${name}`, request);
    // }
    
    // public remote function deleteStorageV1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1VolumeAttachmentEp->delete(string `/apis/storage.k8s.io/v1/volumeattachments/${name}`, request);
    // }
    
    // public remote function patchStorageV1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1VolumeAttachmentEp->patch(string `/apis/storage.k8s.io/v1/volumeattachments/${name}`, request);
    // }
    
    // public remote function readStorageV1VolumeAttachmentStatus(string name) returns http:Response | error {
    //     http:Client readStorageV1VolumeAttachmentStatusEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1VolumeAttachmentStatusEp->get(string `/apis/storage.k8s.io/v1/volumeattachments/${name}/status`, message = request);
    // }
    
    // public remote function replaceStorageV1VolumeAttachmentStatus(models:'io\.k8s\.api\.storage\.v1\.VolumeAttachment replaceStorageV1VolumeAttachmentStatusBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1VolumeAttachmentStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1VolumeAttachmentStatusEp->put(string `/apis/storage.k8s.io/v1/volumeattachments/${name}/status`, request);
    // }
    
    // public remote function patchStorageV1VolumeAttachmentStatus(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1VolumeAttachmentStatusBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1VolumeAttachmentStatusEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1VolumeAttachmentStatusEp->patch(string `/apis/storage.k8s.io/v1/volumeattachments/${name}/status`, request);
    // }
    
    // public remote function watchStorageV1CSIDriverList() returns http:Response | error {
    //     http:Client watchStorageV1CSIDriverListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1CSIDriverListEp->get("/apis/storage.k8s.io/v1/watch/csidrivers", message = request);
    // }
    
    // public remote function watchStorageV1CSIDriver(string name) returns http:Response | error {
    //     http:Client watchStorageV1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1CSIDriverEp->get(string `/apis/storage.k8s.io/v1/watch/csidrivers/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1CSINodeList() returns http:Response | error {
    //     http:Client watchStorageV1CSINodeListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1CSINodeListEp->get("/apis/storage.k8s.io/v1/watch/csinodes", message = request);
    // }
    
    // public remote function watchStorageV1CSINode(string name) returns http:Response | error {
    //     http:Client watchStorageV1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1CSINodeEp->get(string `/apis/storage.k8s.io/v1/watch/csinodes/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1StorageClassList() returns http:Response | error {
    //     http:Client watchStorageV1StorageClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1StorageClassListEp->get("/apis/storage.k8s.io/v1/watch/storageclasses", message = request);
    // }
    
    // public remote function watchStorageV1StorageClass(string name) returns http:Response | error {
    //     http:Client watchStorageV1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1StorageClassEp->get(string `/apis/storage.k8s.io/v1/watch/storageclasses/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1VolumeAttachmentList() returns http:Response | error {
    //     http:Client watchStorageV1VolumeAttachmentListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1VolumeAttachmentListEp->get("/apis/storage.k8s.io/v1/watch/volumeattachments", message = request);
    // }
    
    // public remote function watchStorageV1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client watchStorageV1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1/watch/volumeattachments/${name}`, message = request);
    // }
    
    // public remote function getStorageV1alpha1APIResources() returns http:Response | error {
    //     http:Client getStorageV1alpha1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getStorageV1alpha1APIResourcesEp->get("/apis/storage.k8s.io/v1alpha1/", message = request);
    // }
    
    // public remote function listStorageV1alpha1VolumeAttachment() returns http:Response | error {
    //     http:Client listStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1alpha1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1alpha1/volumeattachments", message = request);
    // }
    
    // public remote function createStorageV1alpha1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachment createStorageV1alpha1VolumeAttachmentBody) returns http:Response | error {
    //     http:Client createStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1alpha1VolumeAttachmentEp->post("/apis/storage.k8s.io/v1alpha1/volumeattachments", request);
    // }
    
    // public remote function deleteStorageV1alpha1CollectionVolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1alpha1CollectionVolumeAttachmentBody) returns http:Response | error {
    //     http:Client deleteStorageV1alpha1CollectionVolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1alpha1CollectionVolumeAttachmentEp->delete("/apis/storage.k8s.io/v1alpha1/volumeattachments", request);
    // }
    
    // public remote function readStorageV1alpha1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client readStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1alpha1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1alpha1/volumeattachments/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1alpha1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachment replaceStorageV1alpha1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1alpha1VolumeAttachmentEp->put(string `/apis/storage.k8s.io/v1alpha1/volumeattachments/${name}`, request);
    // }
    
    // public remote function deleteStorageV1alpha1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1alpha1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1alpha1VolumeAttachmentEp->delete(string `/apis/storage.k8s.io/v1alpha1/volumeattachments/${name}`, request);
    // }
    
    // public remote function patchStorageV1alpha1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1alpha1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1alpha1VolumeAttachmentEp->patch(string `/apis/storage.k8s.io/v1alpha1/volumeattachments/${name}`, request);
    // }
    
    // public remote function watchStorageV1alpha1VolumeAttachmentList() returns http:Response | error {
    //     http:Client watchStorageV1alpha1VolumeAttachmentListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1alpha1VolumeAttachmentListEp->get("/apis/storage.k8s.io/v1alpha1/watch/volumeattachments", message = request);
    // }
    
    // public remote function watchStorageV1alpha1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client watchStorageV1alpha1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1alpha1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1alpha1/watch/volumeattachments/${name}`, message = request);
    // }
    
    // public remote function getStorageV1beta1APIResources() returns http:Response | error {
    //     http:Client getStorageV1beta1APIResourcesEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check getStorageV1beta1APIResourcesEp->get("/apis/storage.k8s.io/v1beta1/", message = request);
    // }
    
    // public remote function listStorageV1beta1CSIDriver() returns http:Response | error {
    //     http:Client listStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1beta1CSIDriverEp->get("/apis/storage.k8s.io/v1beta1/csidrivers", message = request);
    // }
    
    // public remote function createStorageV1beta1CSIDriver(models:'io\.k8s\.api\.storage\.v1beta1\.CSIDriver createStorageV1beta1CSIDriverBody) returns http:Response | error {
    //     http:Client createStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1beta1CSIDriverEp->post("/apis/storage.k8s.io/v1beta1/csidrivers", request);
    // }
    
    // public remote function deleteStorageV1beta1CollectionCSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CollectionCSIDriverBody) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CollectionCSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CollectionCSIDriverEp->delete("/apis/storage.k8s.io/v1beta1/csidrivers", request);
    // }
    
    // public remote function readStorageV1beta1CSIDriver(string name) returns http:Response | error {
    //     http:Client readStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1beta1CSIDriverEp->get(string `/apis/storage.k8s.io/v1beta1/csidrivers/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1beta1CSIDriver(models:'io\.k8s\.api\.storage\.v1beta1\.CSIDriver replaceStorageV1beta1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1beta1CSIDriverEp->put(string `/apis/storage.k8s.io/v1beta1/csidrivers/${name}`, request);
    // }
    
    // public remote function deleteStorageV1beta1CSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CSIDriverEp->delete(string `/apis/storage.k8s.io/v1beta1/csidrivers/${name}`, request);
    // }
    
    // public remote function patchStorageV1beta1CSIDriver(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1beta1CSIDriverBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1beta1CSIDriverEp->patch(string `/apis/storage.k8s.io/v1beta1/csidrivers/${name}`, request);
    // }
    
    // public remote function listStorageV1beta1CSINode() returns http:Response | error {
    //     http:Client listStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1beta1CSINodeEp->get("/apis/storage.k8s.io/v1beta1/csinodes", message = request);
    // }
    
    // public remote function createStorageV1beta1CSINode(models:'io\.k8s\.api\.storage\.v1beta1\.CSINode createStorageV1beta1CSINodeBody) returns http:Response | error {
    //     http:Client createStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1beta1CSINodeEp->post("/apis/storage.k8s.io/v1beta1/csinodes", request);
    // }
    
    // public remote function deleteStorageV1beta1CollectionCSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CollectionCSINodeBody) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CollectionCSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CollectionCSINodeEp->delete("/apis/storage.k8s.io/v1beta1/csinodes", request);
    // }
    
    // public remote function readStorageV1beta1CSINode(string name) returns http:Response | error {
    //     http:Client readStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1beta1CSINodeEp->get(string `/apis/storage.k8s.io/v1beta1/csinodes/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1beta1CSINode(models:'io\.k8s\.api\.storage\.v1beta1\.CSINode replaceStorageV1beta1CSINodeBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1beta1CSINodeEp->put(string `/apis/storage.k8s.io/v1beta1/csinodes/${name}`, request);
    // }
    
    // public remote function deleteStorageV1beta1CSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CSINodeBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CSINodeEp->delete(string `/apis/storage.k8s.io/v1beta1/csinodes/${name}`, request);
    // }
    
    // public remote function patchStorageV1beta1CSINode(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1beta1CSINodeBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1beta1CSINodeEp->patch(string `/apis/storage.k8s.io/v1beta1/csinodes/${name}`, request);
    // }
    
    // public remote function listStorageV1beta1StorageClass() returns http:Response | error {
    //     http:Client listStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1beta1StorageClassEp->get("/apis/storage.k8s.io/v1beta1/storageclasses", message = request);
    // }
    
    // public remote function createStorageV1beta1StorageClass(models:'io\.k8s\.api\.storage\.v1beta1\.StorageClass createStorageV1beta1StorageClassBody) returns http:Response | error {
    //     http:Client createStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1beta1StorageClassEp->post("/apis/storage.k8s.io/v1beta1/storageclasses", request);
    // }
    
    // public remote function deleteStorageV1beta1CollectionStorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CollectionStorageClassBody) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CollectionStorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CollectionStorageClassEp->delete("/apis/storage.k8s.io/v1beta1/storageclasses", request);
    // }
    
    // public remote function readStorageV1beta1StorageClass(string name) returns http:Response | error {
    //     http:Client readStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1beta1StorageClassEp->get(string `/apis/storage.k8s.io/v1beta1/storageclasses/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1beta1StorageClass(models:'io\.k8s\.api\.storage\.v1beta1\.StorageClass replaceStorageV1beta1StorageClassBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1beta1StorageClassEp->put(string `/apis/storage.k8s.io/v1beta1/storageclasses/${name}`, request);
    // }
    
    // public remote function deleteStorageV1beta1StorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1StorageClassBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1StorageClassEp->delete(string `/apis/storage.k8s.io/v1beta1/storageclasses/${name}`, request);
    // }
    
    // public remote function patchStorageV1beta1StorageClass(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1beta1StorageClassBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1beta1StorageClassEp->patch(string `/apis/storage.k8s.io/v1beta1/storageclasses/${name}`, request);
    // }
    
    // public remote function listStorageV1beta1VolumeAttachment() returns http:Response | error {
    //     http:Client listStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check listStorageV1beta1VolumeAttachmentEp->get("/apis/storage.k8s.io/v1beta1/volumeattachments", message = request);
    // }
    
    // public remote function createStorageV1beta1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachment createStorageV1beta1VolumeAttachmentBody) returns http:Response | error {
    //     http:Client createStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check createStorageV1beta1VolumeAttachmentEp->post("/apis/storage.k8s.io/v1beta1/volumeattachments", request);
    // }
    
    // public remote function deleteStorageV1beta1CollectionVolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1CollectionVolumeAttachmentBody) returns http:Response | error {
    //     http:Client deleteStorageV1beta1CollectionVolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1CollectionVolumeAttachmentEp->delete("/apis/storage.k8s.io/v1beta1/volumeattachments", request);
    // }
    
    // public remote function readStorageV1beta1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client readStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check readStorageV1beta1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1beta1/volumeattachments/${name}`, message = request);
    // }
    
    // public remote function replaceStorageV1beta1VolumeAttachment(models:'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachment replaceStorageV1beta1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client replaceStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check replaceStorageV1beta1VolumeAttachmentEp->put(string `/apis/storage.k8s.io/v1beta1/volumeattachments/${name}`, request);
    // }
    
    // public remote function deleteStorageV1beta1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteStorageV1beta1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client deleteStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check deleteStorageV1beta1VolumeAttachmentEp->delete(string `/apis/storage.k8s.io/v1beta1/volumeattachments/${name}`, request);
    // }
    
    // public remote function patchStorageV1beta1VolumeAttachment(models:'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch patchStorageV1beta1VolumeAttachmentBody, string name) returns http:Response | error {
    //     http:Client patchStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;
        

    //     // TODO: Update the request as needed
    //     return check patchStorageV1beta1VolumeAttachmentEp->patch(string `/apis/storage.k8s.io/v1beta1/volumeattachments/${name}`, request);
    // }
    
    // public remote function watchStorageV1beta1CSIDriverList() returns http:Response | error {
    //     http:Client watchStorageV1beta1CSIDriverListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1CSIDriverListEp->get("/apis/storage.k8s.io/v1beta1/watch/csidrivers", message = request);
    // }
    
    // public remote function watchStorageV1beta1CSIDriver(string name) returns http:Response | error {
    //     http:Client watchStorageV1beta1CSIDriverEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1CSIDriverEp->get(string `/apis/storage.k8s.io/v1beta1/watch/csidrivers/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1beta1CSINodeList() returns http:Response | error {
    //     http:Client watchStorageV1beta1CSINodeListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1CSINodeListEp->get("/apis/storage.k8s.io/v1beta1/watch/csinodes", message = request);
    // }
    
    // public remote function watchStorageV1beta1CSINode(string name) returns http:Response | error {
    //     http:Client watchStorageV1beta1CSINodeEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1CSINodeEp->get(string `/apis/storage.k8s.io/v1beta1/watch/csinodes/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1beta1StorageClassList() returns http:Response | error {
    //     http:Client watchStorageV1beta1StorageClassListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1StorageClassListEp->get("/apis/storage.k8s.io/v1beta1/watch/storageclasses", message = request);
    // }
    
    // public remote function watchStorageV1beta1StorageClass(string name) returns http:Response | error {
    //     http:Client watchStorageV1beta1StorageClassEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1StorageClassEp->get(string `/apis/storage.k8s.io/v1beta1/watch/storageclasses/${name}`, message = request);
    // }
    
    // public remote function watchStorageV1beta1VolumeAttachmentList() returns http:Response | error {
    //     http:Client watchStorageV1beta1VolumeAttachmentListEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1VolumeAttachmentListEp->get("/apis/storage.k8s.io/v1beta1/watch/volumeattachments", message = request);
    // }
    
    // public remote function watchStorageV1beta1VolumeAttachment(string name) returns http:Response | error {
    //     http:Client watchStorageV1beta1VolumeAttachmentEp = self.clientEp;
    //     http:Request request = new;

    //     // TODO: Update the request as needed
    //     return check watchStorageV1beta1VolumeAttachmentEp->get(string `/apis/storage.k8s.io/v1beta1/watch/volumeattachments/${name}`, message = request);
    // }
    
    public remote function logFileListHandler() returns http:Response | error {
        http:Client logFileListHandlerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check logFileListHandlerEp->get("/logs/", message = request);
    }
    
    public remote function logFileHandler(string logpath) returns http:Response | error {
        http:Client logFileHandlerEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check logFileHandlerEp->get(string `/logs/${logpath}`, message = request);
    }
    
    public remote function getCodeVersion() returns http:Response | error {
        http:Client getCodeVersionEp = self.clientEp;
        http:Request request = new;

        // TODO: Update the request as needed
        return check getCodeVersionEp->get("/version/", message = request);
    }
    
};
