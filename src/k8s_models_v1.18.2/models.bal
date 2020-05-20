

public type 'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhook record { 
    string[] admissionReviewVersions;
    'io\.k8s\.api\.admissionregistration\.v1\.WebhookClientConfig clientConfig;
    string failurePolicy;
    string matchPolicy;
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector namespaceSelector;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector objectSelector;
    string reinvocationPolicy;
    'io\.k8s\.api\.admissionregistration\.v1\.RuleWithOperations[] rules;
    string sideEffects;
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhookConfiguration record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhook[] webhooks;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhookConfigurationList record { 
    string apiVersion;
    'io\.k8s\.api\.admissionregistration\.v1\.MutatingWebhookConfiguration[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.RuleWithOperations record { 
    string[] apiGroups;
    string[] apiVersions;
    string[] operations;
    string[] resources;
    string scope;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.ServiceReference record { 
    string name;
    string namespace;
    string path;
    int port;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhook record { 
    string[] admissionReviewVersions;
    'io\.k8s\.api\.admissionregistration\.v1\.WebhookClientConfig clientConfig;
    string failurePolicy;
    string matchPolicy;
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector namespaceSelector;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector objectSelector;
    'io\.k8s\.api\.admissionregistration\.v1\.RuleWithOperations[] rules;
    string sideEffects;
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhookConfiguration record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhook[] webhooks;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhookConfigurationList record { 
    string apiVersion;
    'io\.k8s\.api\.admissionregistration\.v1\.ValidatingWebhookConfiguration[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.admissionregistration\.v1\.WebhookClientConfig record { 
    string caBundle;
    'io\.k8s\.api\.admissionregistration\.v1\.ServiceReference 'service;
    string url;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhook record { 
    string[] admissionReviewVersions;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.WebhookClientConfig clientConfig;
    string failurePolicy;
    string matchPolicy;
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector namespaceSelector;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector objectSelector;
    string reinvocationPolicy;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.RuleWithOperations[] rules;
    string sideEffects;
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhookConfiguration record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhook[] webhooks;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhookConfigurationList record { 
    string apiVersion;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.MutatingWebhookConfiguration[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.RuleWithOperations record { 
    string[] apiGroups;
    string[] apiVersions;
    string[] operations;
    string[] resources;
    string scope;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.ServiceReference record { 
    string name;
    string namespace;
    string path;
    int port;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhook record { 
    string[] admissionReviewVersions;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.WebhookClientConfig clientConfig;
    string failurePolicy;
    string matchPolicy;
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector namespaceSelector;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector objectSelector;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.RuleWithOperations[] rules;
    string sideEffects;
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhookConfiguration record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhook[] webhooks;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhookConfigurationList record { 
    string apiVersion;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.ValidatingWebhookConfiguration[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.admissionregistration\.v1beta1\.WebhookClientConfig record { 
    string caBundle;
    'io\.k8s\.api\.admissionregistration\.v1beta1\.ServiceReference 'service;
    string url;
};

public type 'io\.k8s\.api\.apps\.v1\.ControllerRevision record { 
    string apiVersion;
    'io\.k8s\.apimachinery\.pkg\.runtime\.RawExtension data;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    int revision;
};

public type 'io\.k8s\.api\.apps\.v1\.ControllerRevisionList record { 
    string apiVersion;
    'io\.k8s\.api\.apps\.v1\.ControllerRevision[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSet record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.apps\.v1\.DaemonSetSpec spec;
    'io\.k8s\.api\.apps\.v1\.DaemonSetStatus status;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSetCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSetList record { 
    string apiVersion;
    'io\.k8s\.api\.apps\.v1\.DaemonSet[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSetSpec record { 
    int minReadySeconds;
    int revisionHistoryLimit;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
    'io\.k8s\.api\.apps\.v1\.DaemonSetUpdateStrategy updateStrategy;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSetStatus record { 
    int collisionCount;
    'io\.k8s\.api\.apps\.v1\.DaemonSetCondition[] conditions;
    int currentNumberScheduled;
    int desiredNumberScheduled;
    int numberAvailable;
    int numberMisscheduled;
    int numberReady;
    int numberUnavailable;
    int observedGeneration;
    int updatedNumberScheduled;
};

public type 'io\.k8s\.api\.apps\.v1\.DaemonSetUpdateStrategy record { 
    'io\.k8s\.api\.apps\.v1\.RollingUpdateDaemonSet rollingUpdate;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.Deployment record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.apps\.v1\.DeploymentSpec spec;
    'io\.k8s\.api\.apps\.v1\.DeploymentStatus status;
};

public type 'io\.k8s\.api\.apps\.v1\.DeploymentCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastUpdateTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.DeploymentList record { 
    string apiVersion;
    'io\.k8s\.api\.apps\.v1\.Deployment[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.apps\.v1\.DeploymentSpec record { 
    int minReadySeconds;
    boolean paused;
    int progressDeadlineSeconds;
    int replicas;
    int revisionHistoryLimit;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.apps\.v1\.DeploymentStrategy strategy;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
};

public type 'io\.k8s\.api\.apps\.v1\.DeploymentStatus record { 
    int availableReplicas;
    int collisionCount;
    'io\.k8s\.api\.apps\.v1\.DeploymentCondition[] conditions;
    int observedGeneration;
    int readyReplicas;
    int replicas;
    int unavailableReplicas;
    int updatedReplicas;
};

public type 'io\.k8s\.api\.apps\.v1\.DeploymentStrategy record { 
    'io\.k8s\.api\.apps\.v1\.RollingUpdateDeployment rollingUpdate;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.ReplicaSet record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.apps\.v1\.ReplicaSetSpec spec;
    'io\.k8s\.api\.apps\.v1\.ReplicaSetStatus status;
};

public type 'io\.k8s\.api\.apps\.v1\.ReplicaSetCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.ReplicaSetList record { 
    string apiVersion;
    'io\.k8s\.api\.apps\.v1\.ReplicaSet[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.apps\.v1\.ReplicaSetSpec record { 
    int minReadySeconds;
    int replicas;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
};

public type 'io\.k8s\.api\.apps\.v1\.ReplicaSetStatus record { 
    int availableReplicas;
    'io\.k8s\.api\.apps\.v1\.ReplicaSetCondition[] conditions;
    int fullyLabeledReplicas;
    int observedGeneration;
    int readyReplicas;
    int replicas;
};

public type 'io\.k8s\.api\.apps\.v1\.RollingUpdateDaemonSet record { 
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString maxUnavailable;
};

public type 'io\.k8s\.api\.apps\.v1\.RollingUpdateDeployment record { 
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString maxSurge;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString maxUnavailable;
};

public type 'io\.k8s\.api\.apps\.v1\.RollingUpdateStatefulSetStrategy record { 
    int partition;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSet record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.apps\.v1\.StatefulSetSpec spec;
    'io\.k8s\.api\.apps\.v1\.StatefulSetStatus status;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSetCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSetList record { 
    string apiVersion;
    'io\.k8s\.api\.apps\.v1\.StatefulSet[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSetSpec record { 
    string podManagementPolicy;
    int replicas;
    int revisionHistoryLimit;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    string serviceName;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
    'io\.k8s\.api\.apps\.v1\.StatefulSetUpdateStrategy updateStrategy;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim[] volumeClaimTemplates;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSetStatus record { 
    int collisionCount;
    'io\.k8s\.api\.apps\.v1\.StatefulSetCondition[] conditions;
    int currentReplicas;
    string currentRevision;
    int observedGeneration;
    int readyReplicas;
    int replicas;
    string updateRevision;
    int updatedReplicas;
};

public type 'io\.k8s\.api\.apps\.v1\.StatefulSetUpdateStrategy record { 
    'io\.k8s\.api\.apps\.v1\.RollingUpdateStatefulSetStrategy rollingUpdate;
    string 'type;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSink record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSinkSpec spec;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSinkList record { 
    string apiVersion;
    'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSink[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.AuditSinkSpec record { 
    'io\.k8s\.api\.auditregistration\.v1alpha1\.Policy policy;
    'io\.k8s\.api\.auditregistration\.v1alpha1\.Webhook webhook;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.Policy record { 
    string level;
    string[] stages;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.ServiceReference record { 
    string name;
    string namespace;
    string path;
    int port;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.Webhook record { 
    'io\.k8s\.api\.auditregistration\.v1alpha1\.WebhookClientConfig clientConfig;
    'io\.k8s\.api\.auditregistration\.v1alpha1\.WebhookThrottleConfig throttle;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.WebhookClientConfig record { 
    string caBundle;
    'io\.k8s\.api\.auditregistration\.v1alpha1\.ServiceReference 'service;
    string url;
};

public type 'io\.k8s\.api\.auditregistration\.v1alpha1\.WebhookThrottleConfig record { 
    int burst;
    int qps;
};

public type 'io\.k8s\.api\.authentication\.v1\.BoundObjectReference record { 
    string apiVersion;
    string kind;
    string name;
    string uid;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenRequest record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authentication\.v1\.TokenRequestSpec spec;
    'io\.k8s\.api\.authentication\.v1\.TokenRequestStatus status;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenRequestSpec record { 
    string[] audiences;
    'io\.k8s\.api\.authentication\.v1\.BoundObjectReference boundObjectRef;
    int expirationSeconds;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenRequestStatus record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time expirationTimestamp;
    string token;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authentication\.v1\.TokenReviewSpec spec;
    'io\.k8s\.api\.authentication\.v1\.TokenReviewStatus status;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenReviewSpec record { 
    string[] audiences;
    string token;
};

public type 'io\.k8s\.api\.authentication\.v1\.TokenReviewStatus record { 
    string[] audiences;
    boolean authenticated;
    string _error;
    'io\.k8s\.api\.authentication\.v1\.UserInfo user;
};

public type 'io\.k8s\.api\.authentication\.v1\.UserInfo record { 
    anydata extra;
    string[] groups;
    string uid;
    string username;
};

public type 'io\.k8s\.api\.authentication\.v1beta1\.TokenReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authentication\.v1beta1\.TokenReviewSpec spec;
    'io\.k8s\.api\.authentication\.v1beta1\.TokenReviewStatus status;
};

public type 'io\.k8s\.api\.authentication\.v1beta1\.TokenReviewSpec record { 
    string[] audiences;
    string token;
};

public type 'io\.k8s\.api\.authentication\.v1beta1\.TokenReviewStatus record { 
    string[] audiences;
    boolean authenticated;
    string _error;
    'io\.k8s\.api\.authentication\.v1beta1\.UserInfo user;
};

public type 'io\.k8s\.api\.authentication\.v1beta1\.UserInfo record { 
    anydata extra;
    string[] groups;
    string uid;
    string username;
};

public type 'io\.k8s\.api\.authorization\.v1\.LocalSubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1\.NonResourceAttributes record { 
    string path;
    string verb;
};

public type 'io\.k8s\.api\.authorization\.v1\.NonResourceRule record { 
    string[] nonResourceURLs;
    string[] verbs;
};

public type 'io\.k8s\.api\.authorization\.v1\.ResourceAttributes record { 
    string 'group;
    string name;
    string namespace;
    string 'resource;
    string subresource;
    string verb;
    string 'version;
};

public type 'io\.k8s\.api\.authorization\.v1\.ResourceRule record { 
    string[] apiGroups;
    string[] resourceNames;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.authorization\.v1\.SelfSubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1\.SelfSubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1\.SelfSubjectAccessReviewSpec record { 
    'io\.k8s\.api\.authorization\.v1\.NonResourceAttributes nonResourceAttributes;
    'io\.k8s\.api\.authorization\.v1\.ResourceAttributes resourceAttributes;
};

public type 'io\.k8s\.api\.authorization\.v1\.SelfSubjectRulesReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1\.SelfSubjectRulesReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1\.SubjectRulesReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1\.SelfSubjectRulesReviewSpec record { 
    string namespace;
};

public type 'io\.k8s\.api\.authorization\.v1\.SubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewSpec record { 
    anydata extra;
    string[] groups;
    'io\.k8s\.api\.authorization\.v1\.NonResourceAttributes nonResourceAttributes;
    'io\.k8s\.api\.authorization\.v1\.ResourceAttributes resourceAttributes;
    string uid;
    string user;
};

public type 'io\.k8s\.api\.authorization\.v1\.SubjectAccessReviewStatus record { 
    boolean allowed;
    boolean denied;
    string evaluationError;
    string reason;
};

public type 'io\.k8s\.api\.authorization\.v1\.SubjectRulesReviewStatus record { 
    string evaluationError;
    boolean incomplete;
    'io\.k8s\.api\.authorization\.v1\.NonResourceRule[] nonResourceRules;
    'io\.k8s\.api\.authorization\.v1\.ResourceRule[] resourceRules;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.LocalSubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.NonResourceAttributes record { 
    string path;
    string verb;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.NonResourceRule record { 
    string[] nonResourceURLs;
    string[] verbs;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.ResourceAttributes record { 
    string 'group;
    string name;
    string namespace;
    string 'resource;
    string subresource;
    string verb;
    string 'version;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.ResourceRule record { 
    string[] apiGroups;
    string[] resourceNames;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectAccessReviewSpec record { 
    'io\.k8s\.api\.authorization\.v1beta1\.NonResourceAttributes nonResourceAttributes;
    'io\.k8s\.api\.authorization\.v1beta1\.ResourceAttributes resourceAttributes;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectRulesReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectRulesReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectRulesReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SelfSubjectRulesReviewSpec record { 
    string namespace;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReview record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewSpec spec;
    'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewStatus status;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewSpec record { 
    anydata extra;
    string[] 'group;
    'io\.k8s\.api\.authorization\.v1beta1\.NonResourceAttributes nonResourceAttributes;
    'io\.k8s\.api\.authorization\.v1beta1\.ResourceAttributes resourceAttributes;
    string uid;
    string user;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SubjectAccessReviewStatus record { 
    boolean allowed;
    boolean denied;
    string evaluationError;
    string reason;
};

public type 'io\.k8s\.api\.authorization\.v1beta1\.SubjectRulesReviewStatus record { 
    string evaluationError;
    boolean incomplete;
    'io\.k8s\.api\.authorization\.v1beta1\.NonResourceRule[] nonResourceRules;
    'io\.k8s\.api\.authorization\.v1beta1\.ResourceRule[] resourceRules;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.CrossVersionObjectReference record { 
    string apiVersion;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscaler record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscalerSpec spec;
    'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscalerStatus status;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscalerList record { 
    string apiVersion;
    'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscaler[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscalerSpec record { 
    int maxReplicas;
    int minReplicas;
    'io\.k8s\.api\.autoscaling\.v1\.CrossVersionObjectReference scaleTargetRef;
    int targetCPUUtilizationPercentage;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.HorizontalPodAutoscalerStatus record { 
    int currentCPUUtilizationPercentage;
    int currentReplicas;
    int desiredReplicas;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastScaleTime;
    int observedGeneration;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.Scale record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.autoscaling\.v1\.ScaleSpec spec;
    'io\.k8s\.api\.autoscaling\.v1\.ScaleStatus status;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.ScaleSpec record { 
    int replicas;
};

public type 'io\.k8s\.api\.autoscaling\.v1\.ScaleStatus record { 
    int replicas;
    string selector;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.CrossVersionObjectReference record { 
    string apiVersion;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ExternalMetricSource record { 
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector metricSelector;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity targetAverageValue;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity targetValue;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ExternalMetricStatus record { 
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity currentAverageValue;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity currentValue;
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector metricSelector;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscaler record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerSpec spec;
    'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerStatus status;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerList record { 
    string apiVersion;
    'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscaler[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerSpec record { 
    int maxReplicas;
    'io\.k8s\.api\.autoscaling\.v2beta1\.MetricSpec[] metrics;
    int minReplicas;
    'io\.k8s\.api\.autoscaling\.v2beta1\.CrossVersionObjectReference scaleTargetRef;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta1\.HorizontalPodAutoscalerCondition[] conditions;
    'io\.k8s\.api\.autoscaling\.v2beta1\.MetricStatus[] currentMetrics;
    int currentReplicas;
    int desiredReplicas;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastScaleTime;
    int observedGeneration;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.MetricSpec record { 
    'io\.k8s\.api\.autoscaling\.v2beta1\.ExternalMetricSource 'external;
    'io\.k8s\.api\.autoscaling\.v2beta1\.ObjectMetricSource 'object;
    'io\.k8s\.api\.autoscaling\.v2beta1\.PodsMetricSource pods;
    'io\.k8s\.api\.autoscaling\.v2beta1\.ResourceMetricSource 'resource;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.MetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta1\.ExternalMetricStatus 'external;
    'io\.k8s\.api\.autoscaling\.v2beta1\.ObjectMetricStatus 'object;
    'io\.k8s\.api\.autoscaling\.v2beta1\.PodsMetricStatus pods;
    'io\.k8s\.api\.autoscaling\.v2beta1\.ResourceMetricStatus 'resource;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ObjectMetricSource record { 
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity averageValue;
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.autoscaling\.v2beta1\.CrossVersionObjectReference target;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity targetValue;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ObjectMetricStatus record { 
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity averageValue;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity currentValue;
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.autoscaling\.v2beta1\.CrossVersionObjectReference target;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.PodsMetricSource record { 
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity targetAverageValue;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.PodsMetricStatus record { 
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity currentAverageValue;
    string metricName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ResourceMetricSource record { 
    string name;
    int targetAverageUtilization;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity targetAverageValue;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta1\.ResourceMetricStatus record { 
    int currentAverageUtilization;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity currentAverageValue;
    string name;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.CrossVersionObjectReference record { 
    string apiVersion;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ExternalMetricSource record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricTarget target;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ExternalMetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricValueStatus current;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HPAScalingPolicy record { 
    int periodSeconds;
    string 'type;
    int value;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HPAScalingRules record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.HPAScalingPolicy[] policies;
    string selectPolicy;
    int stabilizationWindowSeconds;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscaler record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerSpec spec;
    'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerStatus status;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerBehavior record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.HPAScalingRules scaleDown;
    'io\.k8s\.api\.autoscaling\.v2beta2\.HPAScalingRules scaleUp;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerList record { 
    string apiVersion;
    'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscaler[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerSpec record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerBehavior behavior;
    int maxReplicas;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricSpec[] metrics;
    int minReplicas;
    'io\.k8s\.api\.autoscaling\.v2beta2\.CrossVersionObjectReference scaleTargetRef;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.HorizontalPodAutoscalerCondition[] conditions;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricStatus[] currentMetrics;
    int currentReplicas;
    int desiredReplicas;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastScaleTime;
    int observedGeneration;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier record { 
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.MetricSpec record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.ExternalMetricSource 'external;
    'io\.k8s\.api\.autoscaling\.v2beta2\.ObjectMetricSource 'object;
    'io\.k8s\.api\.autoscaling\.v2beta2\.PodsMetricSource pods;
    'io\.k8s\.api\.autoscaling\.v2beta2\.ResourceMetricSource 'resource;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.MetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.ExternalMetricStatus 'external;
    'io\.k8s\.api\.autoscaling\.v2beta2\.ObjectMetricStatus 'object;
    'io\.k8s\.api\.autoscaling\.v2beta2\.PodsMetricStatus pods;
    'io\.k8s\.api\.autoscaling\.v2beta2\.ResourceMetricStatus 'resource;
    string 'type;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.MetricTarget record { 
    int averageUtilization;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity averageValue;
    string 'type;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity value;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.MetricValueStatus record { 
    int averageUtilization;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity averageValue;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity value;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ObjectMetricSource record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.CrossVersionObjectReference describedObject;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricTarget target;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ObjectMetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricValueStatus current;
    'io\.k8s\.api\.autoscaling\.v2beta2\.CrossVersionObjectReference describedObject;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.PodsMetricSource record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricTarget target;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.PodsMetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricValueStatus current;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricIdentifier metric;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ResourceMetricSource record { 
    string name;
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricTarget target;
};

public type 'io\.k8s\.api\.autoscaling\.v2beta2\.ResourceMetricStatus record { 
    'io\.k8s\.api\.autoscaling\.v2beta2\.MetricValueStatus current;
    string name;
};

public type 'io\.k8s\.api\.batch\.v1\.Job record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.batch\.v1\.JobSpec spec;
    'io\.k8s\.api\.batch\.v1\.JobStatus status;
};

public type 'io\.k8s\.api\.batch\.v1\.JobCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastProbeTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.batch\.v1\.JobList record { 
    string apiVersion;
    'io\.k8s\.api\.batch\.v1\.Job[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.batch\.v1\.JobSpec record { 
    int activeDeadlineSeconds;
    int backoffLimit;
    int completions;
    boolean manualSelector;
    int parallelism;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
    int ttlSecondsAfterFinished;
};

public type 'io\.k8s\.api\.batch\.v1\.JobStatus record { 
    int active;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time completionTime;
    'io\.k8s\.api\.batch\.v1\.JobCondition[] conditions;
    int failed;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time startTime;
    int succeeded;
};

public type 'io\.k8s\.api\.batch\.v1beta1\.CronJob record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.batch\.v1beta1\.CronJobSpec spec;
    'io\.k8s\.api\.batch\.v1beta1\.CronJobStatus status;
};

public type 'io\.k8s\.api\.batch\.v1beta1\.CronJobList record { 
    string apiVersion;
    'io\.k8s\.api\.batch\.v1beta1\.CronJob[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.batch\.v1beta1\.CronJobSpec record { 
    string concurrencyPolicy;
    int failedJobsHistoryLimit;
    'io\.k8s\.api\.batch\.v1beta1\.JobTemplateSpec jobTemplate;
    string schedule;
    int startingDeadlineSeconds;
    int successfulJobsHistoryLimit;
    boolean suspend;
};

public type 'io\.k8s\.api\.batch\.v1beta1\.CronJobStatus record { 
    'io\.k8s\.api\.core\.v1\.ObjectReference[] active;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastScheduleTime;
};

public type 'io\.k8s\.api\.batch\.v1beta1\.JobTemplateSpec record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.batch\.v1\.JobSpec spec;
};

public type 'io\.k8s\.api\.batch\.v2alpha1\.CronJob record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.batch\.v2alpha1\.CronJobSpec spec;
    'io\.k8s\.api\.batch\.v2alpha1\.CronJobStatus status;
};

public type 'io\.k8s\.api\.batch\.v2alpha1\.CronJobList record { 
    string apiVersion;
    'io\.k8s\.api\.batch\.v2alpha1\.CronJob[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.batch\.v2alpha1\.CronJobSpec record { 
    string concurrencyPolicy;
    int failedJobsHistoryLimit;
    'io\.k8s\.api\.batch\.v2alpha1\.JobTemplateSpec jobTemplate;
    string schedule;
    int startingDeadlineSeconds;
    int successfulJobsHistoryLimit;
    boolean suspend;
};

public type 'io\.k8s\.api\.batch\.v2alpha1\.CronJobStatus record { 
    'io\.k8s\.api\.core\.v1\.ObjectReference[] active;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastScheduleTime;
};

public type 'io\.k8s\.api\.batch\.v2alpha1\.JobTemplateSpec record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.batch\.v1\.JobSpec spec;
};

public type 'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestSpec spec;
    'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestStatus status;
};

public type 'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastUpdateTime;
    string message;
    string reason;
    string 'type;
};

public type 'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestList record { 
    string apiVersion;
    'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequest[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestSpec record { 
    anydata extra;
    string[] groups;
    string request;
    string signerName;
    string uid;
    string[] usages;
    string username;
};

public type 'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestStatus record { 
    string certificate;
    'io\.k8s\.api\.certificates\.v1beta1\.CertificateSigningRequestCondition[] conditions;
};

public type 'io\.k8s\.api\.coordination\.v1\.Lease record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.coordination\.v1\.LeaseSpec spec;
};

public type 'io\.k8s\.api\.coordination\.v1\.LeaseList record { 
    string apiVersion;
    'io\.k8s\.api\.coordination\.v1\.Lease[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.coordination\.v1\.LeaseSpec record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime acquireTime;
    string holderIdentity;
    int leaseDurationSeconds;
    int leaseTransitions;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime renewTime;
};

public type 'io\.k8s\.api\.coordination\.v1beta1\.Lease record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.coordination\.v1beta1\.LeaseSpec spec;
};

public type 'io\.k8s\.api\.coordination\.v1beta1\.LeaseList record { 
    string apiVersion;
    'io\.k8s\.api\.coordination\.v1beta1\.Lease[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.coordination\.v1beta1\.LeaseSpec record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime acquireTime;
    string holderIdentity;
    int leaseDurationSeconds;
    int leaseTransitions;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime renewTime;
};

public type 'io\.k8s\.api\.core\.v1\.AWSElasticBlockStoreVolumeSource record { 
    string fsType;
    int partition;
    boolean readOnly;
    string volumeID;
};

public type 'io\.k8s\.api\.core\.v1\.Affinity record { 
    'io\.k8s\.api\.core\.v1\.NodeAffinity nodeAffinity;
    'io\.k8s\.api\.core\.v1\.PodAffinity podAffinity;
    'io\.k8s\.api\.core\.v1\.PodAntiAffinity podAntiAffinity;
};

public type 'io\.k8s\.api\.core\.v1\.AttachedVolume record { 
    string devicePath;
    string name;
};

public type 'io\.k8s\.api\.core\.v1\.AzureDiskVolumeSource record { 
    string cachingMode;
    string diskName;
    string diskURI;
    string fsType;
    string kind;
    boolean readOnly;
};

public type 'io\.k8s\.api\.core\.v1\.AzureFilePersistentVolumeSource record { 
    boolean readOnly;
    string secretName;
    string secretNamespace;
    string shareName;
};

public type 'io\.k8s\.api\.core\.v1\.AzureFileVolumeSource record { 
    boolean readOnly;
    string secretName;
    string shareName;
};

public type 'io\.k8s\.api\.core\.v1\.Binding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.ObjectReference target;
};

public type 'io\.k8s\.api\.core\.v1\.CSIPersistentVolumeSource record { 
    'io\.k8s\.api\.core\.v1\.SecretReference controllerExpandSecretRef;
    'io\.k8s\.api\.core\.v1\.SecretReference controllerPublishSecretRef;
    string driver;
    string fsType;
    'io\.k8s\.api\.core\.v1\.SecretReference nodePublishSecretRef;
    'io\.k8s\.api\.core\.v1\.SecretReference nodeStageSecretRef;
    boolean readOnly;
    anydata volumeAttributes;
    string volumeHandle;
};

public type 'io\.k8s\.api\.core\.v1\.CSIVolumeSource record { 
    string driver;
    string fsType;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference nodePublishSecretRef;
    boolean readOnly;
    anydata volumeAttributes;
};

public type 'io\.k8s\.api\.core\.v1\.Capabilities record { 
    string[] add;
    string[] drop;
};

public type 'io\.k8s\.api\.core\.v1\.CephFSPersistentVolumeSource record { 
    string[] monitors;
    string path;
    boolean readOnly;
    string secretFile;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
    string user;
};

public type 'io\.k8s\.api\.core\.v1\.CephFSVolumeSource record { 
    string[] monitors;
    string path;
    boolean readOnly;
    string secretFile;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    string user;
};

public type 'io\.k8s\.api\.core\.v1\.CinderPersistentVolumeSource record { 
    string fsType;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
    string volumeID;
};

public type 'io\.k8s\.api\.core\.v1\.CinderVolumeSource record { 
    string fsType;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    string volumeID;
};

public type 'io\.k8s\.api\.core\.v1\.ClientIPConfig record { 
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.core\.v1\.ComponentCondition record { 
    string _error;
    string message;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.ComponentStatus record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ComponentCondition[] conditions;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ComponentStatusList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ComponentStatus[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMap record { 
    string apiVersion;
    anydata binaryData;
    anydata data;
    boolean immutable;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapEnvSource record { 
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapKeySelector record { 
    string key;
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ConfigMap[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapNodeConfigSource record { 
    string kubeletConfigKey;
    string name;
    string namespace;
    string resourceVersion;
    string uid;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapProjection record { 
    'io\.k8s\.api\.core\.v1\.KeyToPath[] items;
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.ConfigMapVolumeSource record { 
    int defaultMode;
    'io\.k8s\.api\.core\.v1\.KeyToPath[] items;
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.Container record { 
    string[] args;
    string[] command;
    'io\.k8s\.api\.core\.v1\.EnvVar[] env;
    'io\.k8s\.api\.core\.v1\.EnvFromSource[] envFrom;
    string image;
    string imagePullPolicy;
    'io\.k8s\.api\.core\.v1\.Lifecycle lifecycle;
    'io\.k8s\.api\.core\.v1\.Probe livenessProbe;
    string name;
    'io\.k8s\.api\.core\.v1\.ContainerPort[] ports;
    'io\.k8s\.api\.core\.v1\.Probe readinessProbe;
    'io\.k8s\.api\.core\.v1\.ResourceRequirements resources;
    'io\.k8s\.api\.core\.v1\.SecurityContext securityContext;
    'io\.k8s\.api\.core\.v1\.Probe startupProbe;
    boolean stdin;
    boolean stdinOnce;
    string terminationMessagePath;
    string terminationMessagePolicy;
    boolean tty;
    'io\.k8s\.api\.core\.v1\.VolumeDevice[] volumeDevices;
    'io\.k8s\.api\.core\.v1\.VolumeMount[] volumeMounts;
    string workingDir;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerImage record { 
    string[] names;
    int sizeBytes;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerPort record { 
    int containerPort;
    string hostIP;
    int hostPort;
    string name;
    string protocol;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerState record { 
    'io\.k8s\.api\.core\.v1\.ContainerStateRunning running;
    'io\.k8s\.api\.core\.v1\.ContainerStateTerminated terminated;
    'io\.k8s\.api\.core\.v1\.ContainerStateWaiting waiting;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerStateRunning record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time startedAt;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerStateTerminated record { 
    string containerID;
    int exitCode;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time finishedAt;
    string message;
    string reason;
    int signal;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time startedAt;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerStateWaiting record { 
    string message;
    string reason;
};

public type 'io\.k8s\.api\.core\.v1\.ContainerStatus record { 
    string containerID;
    string image;
    string imageID;
    'io\.k8s\.api\.core\.v1\.ContainerState lastState;
    string name;
    boolean ready;
    int restartCount;
    boolean started;
    'io\.k8s\.api\.core\.v1\.ContainerState state;
};

public type 'io\.k8s\.api\.core\.v1\.DaemonEndpoint record { 
    int Port;
};

public type 'io\.k8s\.api\.core\.v1\.DownwardAPIProjection record { 
    'io\.k8s\.api\.core\.v1\.DownwardAPIVolumeFile[] items;
};

public type 'io\.k8s\.api\.core\.v1\.DownwardAPIVolumeFile record { 
    'io\.k8s\.api\.core\.v1\.ObjectFieldSelector fieldRef;
    int mode;
    string path;
    'io\.k8s\.api\.core\.v1\.ResourceFieldSelector resourceFieldRef;
};

public type 'io\.k8s\.api\.core\.v1\.DownwardAPIVolumeSource record { 
    int defaultMode;
    'io\.k8s\.api\.core\.v1\.DownwardAPIVolumeFile[] items;
};

public type 'io\.k8s\.api\.core\.v1\.EmptyDirVolumeSource record { 
    string medium;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity sizeLimit;
};

public type 'io\.k8s\.api\.core\.v1\.EndpointAddress record { 
    string hostname;
    string ip;
    string nodeName;
    'io\.k8s\.api\.core\.v1\.ObjectReference targetRef;
};

public type 'io\.k8s\.api\.core\.v1\.EndpointPort record { 
    string appProtocol;
    string name;
    int port;
    string protocol;
};

public type 'io\.k8s\.api\.core\.v1\.EndpointSubset record { 
    'io\.k8s\.api\.core\.v1\.EndpointAddress[] addresses;
    'io\.k8s\.api\.core\.v1\.EndpointAddress[] notReadyAddresses;
    'io\.k8s\.api\.core\.v1\.EndpointPort[] ports;
};

public type 'io\.k8s\.api\.core\.v1\.Endpoints record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.EndpointSubset[] subsets;
};

public type 'io\.k8s\.api\.core\.v1\.EndpointsList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Endpoints[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.EnvFromSource record { 
    'io\.k8s\.api\.core\.v1\.ConfigMapEnvSource configMapRef;
    string prefix;
    'io\.k8s\.api\.core\.v1\.SecretEnvSource secretRef;
};

public type 'io\.k8s\.api\.core\.v1\.EnvVar record { 
    string name;
    string value;
    'io\.k8s\.api\.core\.v1\.EnvVarSource valueFrom;
};

public type 'io\.k8s\.api\.core\.v1\.EnvVarSource record { 
    'io\.k8s\.api\.core\.v1\.ConfigMapKeySelector configMapKeyRef;
    'io\.k8s\.api\.core\.v1\.ObjectFieldSelector fieldRef;
    'io\.k8s\.api\.core\.v1\.ResourceFieldSelector resourceFieldRef;
    'io\.k8s\.api\.core\.v1\.SecretKeySelector secretKeyRef;
};

public type 'io\.k8s\.api\.core\.v1\.EphemeralContainer record { 
    string[] args;
    string[] command;
    'io\.k8s\.api\.core\.v1\.EnvVar[] env;
    'io\.k8s\.api\.core\.v1\.EnvFromSource[] envFrom;
    string image;
    string imagePullPolicy;
    'io\.k8s\.api\.core\.v1\.Lifecycle lifecycle;
    'io\.k8s\.api\.core\.v1\.Probe livenessProbe;
    string name;
    'io\.k8s\.api\.core\.v1\.ContainerPort[] ports;
    'io\.k8s\.api\.core\.v1\.Probe readinessProbe;
    'io\.k8s\.api\.core\.v1\.ResourceRequirements resources;
    'io\.k8s\.api\.core\.v1\.SecurityContext securityContext;
    'io\.k8s\.api\.core\.v1\.Probe startupProbe;
    boolean stdin;
    boolean stdinOnce;
    string targetContainerName;
    string terminationMessagePath;
    string terminationMessagePolicy;
    boolean tty;
    'io\.k8s\.api\.core\.v1\.VolumeDevice[] volumeDevices;
    'io\.k8s\.api\.core\.v1\.VolumeMount[] volumeMounts;
    string workingDir;
};

public type 'io\.k8s\.api\.core\.v1\.Event record { 
    string action;
    string apiVersion;
    int count;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime eventTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time firstTimestamp;
    'io\.k8s\.api\.core\.v1\.ObjectReference involvedObject;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTimestamp;
    string message;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string reason;
    'io\.k8s\.api\.core\.v1\.ObjectReference related;
    string reportingComponent;
    string reportingInstance;
    'io\.k8s\.api\.core\.v1\.EventSeries series;
    'io\.k8s\.api\.core\.v1\.EventSource 'source;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.EventList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Event[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.EventSeries record { 
    int count;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime lastObservedTime;
    string state;
};

public type 'io\.k8s\.api\.core\.v1\.EventSource record { 
    string component;
    string host;
};

public type 'io\.k8s\.api\.core\.v1\.ExecAction record { 
    string[] command;
};

public type 'io\.k8s\.api\.core\.v1\.FCVolumeSource record { 
    string fsType;
    int lun;
    boolean readOnly;
    string[] targetWWNs;
    string[] wwids;
};

public type 'io\.k8s\.api\.core\.v1\.FlexPersistentVolumeSource record { 
    string driver;
    string fsType;
    anydata options;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
};

public type 'io\.k8s\.api\.core\.v1\.FlexVolumeSource record { 
    string driver;
    string fsType;
    anydata options;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
};

public type 'io\.k8s\.api\.core\.v1\.FlockerVolumeSource record { 
    string datasetName;
    string datasetUUID;
};

public type 'io\.k8s\.api\.core\.v1\.GCEPersistentDiskVolumeSource record { 
    string fsType;
    int partition;
    string pdName;
    boolean readOnly;
};

public type 'io\.k8s\.api\.core\.v1\.GitRepoVolumeSource record { 
    string directory;
    string repository;
    string revision;
};

public type 'io\.k8s\.api\.core\.v1\.GlusterfsPersistentVolumeSource record { 
    string endpoints;
    string endpointsNamespace;
    string path;
    boolean readOnly;
};

public type 'io\.k8s\.api\.core\.v1\.GlusterfsVolumeSource record { 
    string endpoints;
    string path;
    boolean readOnly;
};

public type 'io\.k8s\.api\.core\.v1\.HTTPGetAction record { 
    string host;
    'io\.k8s\.api\.core\.v1\.HTTPHeader[] httpHeaders;
    string path;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString port;
    string scheme;
};

public type 'io\.k8s\.api\.core\.v1\.HTTPHeader record { 
    string name;
    string value;
};

public type 'io\.k8s\.api\.core\.v1\.Handler record { 
    'io\.k8s\.api\.core\.v1\.ExecAction exec;
    'io\.k8s\.api\.core\.v1\.HTTPGetAction httpGet;
    'io\.k8s\.api\.core\.v1\.TCPSocketAction tcpSocket;
};

public type 'io\.k8s\.api\.core\.v1\.HostAlias record { 
    string[] hostnames;
    string ip;
};

public type 'io\.k8s\.api\.core\.v1\.HostPathVolumeSource record { 
    string path;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.ISCSIPersistentVolumeSource record { 
    boolean chapAuthDiscovery;
    boolean chapAuthSession;
    string fsType;
    string initiatorName;
    string iqn;
    string iscsiInterface;
    int lun;
    string[] portals;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
    string targetPortal;
};

public type 'io\.k8s\.api\.core\.v1\.ISCSIVolumeSource record { 
    boolean chapAuthDiscovery;
    boolean chapAuthSession;
    string fsType;
    string initiatorName;
    string iqn;
    string iscsiInterface;
    int lun;
    string[] portals;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    string targetPortal;
};

public type 'io\.k8s\.api\.core\.v1\.KeyToPath record { 
    string key;
    int mode;
    string path;
};

public type 'io\.k8s\.api\.core\.v1\.Lifecycle record { 
    'io\.k8s\.api\.core\.v1\.Handler postStart;
    'io\.k8s\.api\.core\.v1\.Handler preStop;
};

public type 'io\.k8s\.api\.core\.v1\.LimitRange record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.LimitRangeSpec spec;
};

public type 'io\.k8s\.api\.core\.v1\.LimitRangeItem record { 
    anydata 'default;
    anydata defaultRequest;
    anydata max;
    anydata maxLimitRequestRatio;
    anydata min;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.LimitRangeList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.LimitRange[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.LimitRangeSpec record { 
    'io\.k8s\.api\.core\.v1\.LimitRangeItem[] limits;
};

public type 'io\.k8s\.api\.core\.v1\.LoadBalancerIngress record { 
    string hostname;
    string ip;
};

public type 'io\.k8s\.api\.core\.v1\.LoadBalancerStatus record { 
    'io\.k8s\.api\.core\.v1\.LoadBalancerIngress[] ingress;
};

public type 'io\.k8s\.api\.core\.v1\.LocalObjectReference record { 
    string name;
};

public type 'io\.k8s\.api\.core\.v1\.LocalVolumeSource record { 
    string fsType;
    string path;
};

public type 'io\.k8s\.api\.core\.v1\.NFSVolumeSource record { 
    string path;
    boolean readOnly;
    string server;
};

public type 'io\.k8s\.api\.core\.v1\.Namespace record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.NamespaceSpec spec;
    'io\.k8s\.api\.core\.v1\.NamespaceStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.NamespaceCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.NamespaceList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Namespace[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.NamespaceSpec record { 
    string[] finalizers;
};

public type 'io\.k8s\.api\.core\.v1\.NamespaceStatus record { 
    'io\.k8s\.api\.core\.v1\.NamespaceCondition[] conditions;
    string phase;
};

public type 'io\.k8s\.api\.core\.v1\.Node record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.NodeSpec spec;
    'io\.k8s\.api\.core\.v1\.NodeStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.NodeAddress record { 
    string address;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.NodeAffinity record { 
    'io\.k8s\.api\.core\.v1\.PreferredSchedulingTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    'io\.k8s\.api\.core\.v1\.NodeSelector requiredDuringSchedulingIgnoredDuringExecution;
};

public type 'io\.k8s\.api\.core\.v1\.NodeCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastHeartbeatTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.NodeConfigSource record { 
    'io\.k8s\.api\.core\.v1\.ConfigMapNodeConfigSource configMap;
};

public type 'io\.k8s\.api\.core\.v1\.NodeConfigStatus record { 
    'io\.k8s\.api\.core\.v1\.NodeConfigSource active;
    'io\.k8s\.api\.core\.v1\.NodeConfigSource assigned;
    string _error;
    'io\.k8s\.api\.core\.v1\.NodeConfigSource lastKnownGood;
};

public type 'io\.k8s\.api\.core\.v1\.NodeDaemonEndpoints record { 
    'io\.k8s\.api\.core\.v1\.DaemonEndpoint kubeletEndpoint;
};

public type 'io\.k8s\.api\.core\.v1\.NodeList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Node[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.NodeSelector record { 
    'io\.k8s\.api\.core\.v1\.NodeSelectorTerm[] nodeSelectorTerms;
};

public type 'io\.k8s\.api\.core\.v1\.NodeSelectorRequirement record { 
    string key;
    string operator;
    string[] values;
};

public type 'io\.k8s\.api\.core\.v1\.NodeSelectorTerm record { 
    'io\.k8s\.api\.core\.v1\.NodeSelectorRequirement[] matchExpressions;
    'io\.k8s\.api\.core\.v1\.NodeSelectorRequirement[] matchFields;
};

public type 'io\.k8s\.api\.core\.v1\.NodeSpec record { 
    'io\.k8s\.api\.core\.v1\.NodeConfigSource configSource;
    string externalID;
    string podCIDR;
    string[] podCIDRs;
    string providerID;
    'io\.k8s\.api\.core\.v1\.Taint[] taints;
    boolean unschedulable;
};

public type 'io\.k8s\.api\.core\.v1\.NodeStatus record { 
    'io\.k8s\.api\.core\.v1\.NodeAddress[] addresses;
    anydata allocatable;
    anydata capacity;
    'io\.k8s\.api\.core\.v1\.NodeCondition[] conditions;
    'io\.k8s\.api\.core\.v1\.NodeConfigStatus config;
    'io\.k8s\.api\.core\.v1\.NodeDaemonEndpoints daemonEndpoints;
    'io\.k8s\.api\.core\.v1\.ContainerImage[] images;
    'io\.k8s\.api\.core\.v1\.NodeSystemInfo nodeInfo;
    string phase;
    'io\.k8s\.api\.core\.v1\.AttachedVolume[] volumesAttached;
    string[] volumesInUse;
};

public type 'io\.k8s\.api\.core\.v1\.NodeSystemInfo record { 
    string architecture;
    string bootID;
    string containerRuntimeVersion;
    string kernelVersion;
    string kubeProxyVersion;
    string kubeletVersion;
    string machineID;
    string operatingSystem;
    string osImage;
    string systemUUID;
};

public type 'io\.k8s\.api\.core\.v1\.ObjectFieldSelector record { 
    string apiVersion;
    string fieldPath;
};

public type 'io\.k8s\.api\.core\.v1\.ObjectReference record { 
    string apiVersion;
    string fieldPath;
    string kind;
    string name;
    string namespace;
    string resourceVersion;
    string uid;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolume record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeSpec spec;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimSpec spec;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastProbeTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaim[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimSpec record { 
    string[] accessModes;
    'io\.k8s\.api\.core\.v1\.TypedLocalObjectReference dataSource;
    'io\.k8s\.api\.core\.v1\.ResourceRequirements resources;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    string storageClassName;
    string volumeMode;
    string volumeName;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimStatus record { 
    string[] accessModes;
    anydata capacity;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimCondition[] conditions;
    string phase;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimVolumeSource record { 
    string claimName;
    boolean readOnly;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.PersistentVolume[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeSpec record { 
    string[] accessModes;
    'io\.k8s\.api\.core\.v1\.AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
    'io\.k8s\.api\.core\.v1\.AzureDiskVolumeSource azureDisk;
    'io\.k8s\.api\.core\.v1\.AzureFilePersistentVolumeSource azureFile;
    anydata capacity;
    'io\.k8s\.api\.core\.v1\.CephFSPersistentVolumeSource cephfs;
    'io\.k8s\.api\.core\.v1\.CinderPersistentVolumeSource cinder;
    'io\.k8s\.api\.core\.v1\.ObjectReference claimRef;
    'io\.k8s\.api\.core\.v1\.CSIPersistentVolumeSource csi;
    'io\.k8s\.api\.core\.v1\.FCVolumeSource fc;
    'io\.k8s\.api\.core\.v1\.FlexPersistentVolumeSource flexVolume;
    'io\.k8s\.api\.core\.v1\.FlockerVolumeSource flocker;
    'io\.k8s\.api\.core\.v1\.GCEPersistentDiskVolumeSource gcePersistentDisk;
    'io\.k8s\.api\.core\.v1\.GlusterfsPersistentVolumeSource glusterfs;
    'io\.k8s\.api\.core\.v1\.HostPathVolumeSource hostPath;
    'io\.k8s\.api\.core\.v1\.ISCSIPersistentVolumeSource iscsi;
    'io\.k8s\.api\.core\.v1\.LocalVolumeSource local;
    string[] mountOptions;
    'io\.k8s\.api\.core\.v1\.NFSVolumeSource nfs;
    'io\.k8s\.api\.core\.v1\.VolumeNodeAffinity nodeAffinity;
    string persistentVolumeReclaimPolicy;
    'io\.k8s\.api\.core\.v1\.PhotonPersistentDiskVolumeSource photonPersistentDisk;
    'io\.k8s\.api\.core\.v1\.PortworxVolumeSource portworxVolume;
    'io\.k8s\.api\.core\.v1\.QuobyteVolumeSource quobyte;
    'io\.k8s\.api\.core\.v1\.RBDPersistentVolumeSource rbd;
    'io\.k8s\.api\.core\.v1\.ScaleIOPersistentVolumeSource scaleIO;
    string storageClassName;
    'io\.k8s\.api\.core\.v1\.StorageOSPersistentVolumeSource storageos;
    string volumeMode;
    'io\.k8s\.api\.core\.v1\.VsphereVirtualDiskVolumeSource vsphereVolume;
};

public type 'io\.k8s\.api\.core\.v1\.PersistentVolumeStatus record { 
    string message;
    string phase;
    string reason;
};

public type 'io\.k8s\.api\.core\.v1\.PhotonPersistentDiskVolumeSource record { 
    string fsType;
    string pdID;
};

public type 'io\.k8s\.api\.core\.v1\.Pod record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.PodSpec spec;
    'io\.k8s\.api\.core\.v1\.PodStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.PodAffinity record { 
    'io\.k8s\.api\.core\.v1\.WeightedPodAffinityTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    'io\.k8s\.api\.core\.v1\.PodAffinityTerm[] requiredDuringSchedulingIgnoredDuringExecution;
};

public type 'io\.k8s\.api\.core\.v1\.PodAffinityTerm record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector labelSelector;
    string[] namespaces;
    string topologyKey;
};

public type 'io\.k8s\.api\.core\.v1\.PodAntiAffinity record { 
    'io\.k8s\.api\.core\.v1\.WeightedPodAffinityTerm[] preferredDuringSchedulingIgnoredDuringExecution;
    'io\.k8s\.api\.core\.v1\.PodAffinityTerm[] requiredDuringSchedulingIgnoredDuringExecution;
};

public type 'io\.k8s\.api\.core\.v1\.PodCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastProbeTime;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.PodDNSConfig record { 
    string[] nameservers;
    'io\.k8s\.api\.core\.v1\.PodDNSConfigOption[] options;
    string[] searches;
};

public type 'io\.k8s\.api\.core\.v1\.PodDNSConfigOption record { 
    string name;
    string value;
};

public type 'io\.k8s\.api\.core\.v1\.PodIP record { 
    string ip;
};

public type 'io\.k8s\.api\.core\.v1\.PodList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Pod[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.PodReadinessGate record { 
    string conditionType;
};

public type 'io\.k8s\.api\.core\.v1\.PodSecurityContext record { 
    int fsGroup;
    string fsGroupChangePolicy;
    int runAsGroup;
    boolean runAsNonRoot;
    int runAsUser;
    'io\.k8s\.api\.core\.v1\.SELinuxOptions seLinuxOptions;
    int[] supplementalGroups;
    'io\.k8s\.api\.core\.v1\.Sysctl[] sysctls;
    'io\.k8s\.api\.core\.v1\.WindowsSecurityContextOptions windowsOptions;
};

public type 'io\.k8s\.api\.core\.v1\.PodSpec record { 
    int activeDeadlineSeconds;
    'io\.k8s\.api\.core\.v1\.Affinity affinity;
    boolean automountServiceAccountToken;
    'io\.k8s\.api\.core\.v1\.Container[] containers;
    'io\.k8s\.api\.core\.v1\.PodDNSConfig dnsConfig;
    string dnsPolicy;
    boolean enableServiceLinks;
    'io\.k8s\.api\.core\.v1\.EphemeralContainer[] ephemeralContainers;
    'io\.k8s\.api\.core\.v1\.HostAlias[] hostAliases;
    boolean hostIPC;
    boolean hostNetwork;
    boolean hostPID;
    string hostname;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference[] imagePullSecrets;
    'io\.k8s\.api\.core\.v1\.Container[] initContainers;
    string nodeName;
    anydata nodeSelector;
    anydata overhead;
    string preemptionPolicy;
    int priority;
    string priorityClassName;
    'io\.k8s\.api\.core\.v1\.PodReadinessGate[] readinessGates;
    string restartPolicy;
    string runtimeClassName;
    string schedulerName;
    'io\.k8s\.api\.core\.v1\.PodSecurityContext securityContext;
    string serviceAccount;
    string serviceAccountName;
    boolean shareProcessNamespace;
    string subdomain;
    int terminationGracePeriodSeconds;
    'io\.k8s\.api\.core\.v1\.Toleration[] tolerations;
    'io\.k8s\.api\.core\.v1\.TopologySpreadConstraint[] topologySpreadConstraints;
    'io\.k8s\.api\.core\.v1\.Volume[] volumes;
};

public type 'io\.k8s\.api\.core\.v1\.PodStatus record { 
    'io\.k8s\.api\.core\.v1\.PodCondition[] conditions;
    'io\.k8s\.api\.core\.v1\.ContainerStatus[] containerStatuses;
    'io\.k8s\.api\.core\.v1\.ContainerStatus[] ephemeralContainerStatuses;
    string hostIP;
    'io\.k8s\.api\.core\.v1\.ContainerStatus[] initContainerStatuses;
    string message;
    string nominatedNodeName;
    string phase;
    string podIP;
    'io\.k8s\.api\.core\.v1\.PodIP[] podIPs;
    string qosClass;
    string reason;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time startTime;
};

public type 'io\.k8s\.api\.core\.v1\.PodTemplate record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
};

public type 'io\.k8s\.api\.core\.v1\.PodTemplateList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.PodTemplate[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.PodTemplateSpec record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.PodSpec spec;
};

public type 'io\.k8s\.api\.core\.v1\.PortworxVolumeSource record { 
    string fsType;
    boolean readOnly;
    string volumeID;
};

public type 'io\.k8s\.api\.core\.v1\.PreferredSchedulingTerm record { 
    'io\.k8s\.api\.core\.v1\.NodeSelectorTerm preference;
    int weight;
};

public type 'io\.k8s\.api\.core\.v1\.Probe record { 
    'io\.k8s\.api\.core\.v1\.ExecAction exec;
    int failureThreshold;
    'io\.k8s\.api\.core\.v1\.HTTPGetAction httpGet;
    int initialDelaySeconds;
    int periodSeconds;
    int successThreshold;
    'io\.k8s\.api\.core\.v1\.TCPSocketAction tcpSocket;
    int timeoutSeconds;
};

public type 'io\.k8s\.api\.core\.v1\.ProjectedVolumeSource record { 
    int defaultMode;
    'io\.k8s\.api\.core\.v1\.VolumeProjection[] sources;
};

public type 'io\.k8s\.api\.core\.v1\.QuobyteVolumeSource record { 
    string 'group;
    boolean readOnly;
    string registry;
    string tenant;
    string user;
    string volume;
};

public type 'io\.k8s\.api\.core\.v1\.RBDPersistentVolumeSource record { 
    string fsType;
    string image;
    string keyring;
    string[] monitors;
    string pool;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
    string user;
};

public type 'io\.k8s\.api\.core\.v1\.RBDVolumeSource record { 
    string fsType;
    string image;
    string keyring;
    string[] monitors;
    string pool;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    string user;
};

public type 'io\.k8s\.api\.core\.v1\.ReplicationController record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.ReplicationControllerSpec spec;
    'io\.k8s\.api\.core\.v1\.ReplicationControllerStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.ReplicationControllerCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.ReplicationControllerList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ReplicationController[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ReplicationControllerSpec record { 
    int minReadySeconds;
    int replicas;
    anydata selector;
    'io\.k8s\.api\.core\.v1\.PodTemplateSpec template;
};

public type 'io\.k8s\.api\.core\.v1\.ReplicationControllerStatus record { 
    int availableReplicas;
    'io\.k8s\.api\.core\.v1\.ReplicationControllerCondition[] conditions;
    int fullyLabeledReplicas;
    int observedGeneration;
    int readyReplicas;
    int replicas;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceFieldSelector record { 
    string containerName;
    'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity divisor;
    string 'resource;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceQuota record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.ResourceQuotaSpec spec;
    'io\.k8s\.api\.core\.v1\.ResourceQuotaStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceQuotaList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ResourceQuota[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceQuotaSpec record { 
    anydata hard;
    'io\.k8s\.api\.core\.v1\.ScopeSelector scopeSelector;
    string[] scopes;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceQuotaStatus record { 
    anydata hard;
    anydata used;
};

public type 'io\.k8s\.api\.core\.v1\.ResourceRequirements record { 
    anydata limits;
    anydata requests;
};

public type 'io\.k8s\.api\.core\.v1\.SELinuxOptions record { 
    string level;
    string role;
    string 'type;
    string user;
};

public type 'io\.k8s\.api\.core\.v1\.ScaleIOPersistentVolumeSource record { 
    string fsType;
    string gateway;
    string protectionDomain;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.SecretReference secretRef;
    boolean sslEnabled;
    string storageMode;
    string storagePool;
    string system;
    string volumeName;
};

public type 'io\.k8s\.api\.core\.v1\.ScaleIOVolumeSource record { 
    string fsType;
    string gateway;
    string protectionDomain;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    boolean sslEnabled;
    string storageMode;
    string storagePool;
    string system;
    string volumeName;
};

public type 'io\.k8s\.api\.core\.v1\.ScopeSelector record { 
    'io\.k8s\.api\.core\.v1\.ScopedResourceSelectorRequirement[] matchExpressions;
};

public type 'io\.k8s\.api\.core\.v1\.ScopedResourceSelectorRequirement record { 
    string operator;
    string scopeName;
    string[] values;
};

public type 'io\.k8s\.api\.core\.v1\.Secret record { 
    string apiVersion;
    anydata data;
    boolean immutable;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    anydata stringData;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.SecretEnvSource record { 
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.SecretKeySelector record { 
    string key;
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.SecretList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Secret[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.SecretProjection record { 
    'io\.k8s\.api\.core\.v1\.KeyToPath[] items;
    string name;
    boolean optional;
};

public type 'io\.k8s\.api\.core\.v1\.SecretReference record { 
    string name;
    string namespace;
};

public type 'io\.k8s\.api\.core\.v1\.SecretVolumeSource record { 
    int defaultMode;
    'io\.k8s\.api\.core\.v1\.KeyToPath[] items;
    boolean optional;
    string secretName;
};

public type 'io\.k8s\.api\.core\.v1\.SecurityContext record { 
    boolean allowPrivilegeEscalation;
    'io\.k8s\.api\.core\.v1\.Capabilities capabilities;
    boolean privileged;
    string procMount;
    boolean readOnlyRootFilesystem;
    int runAsGroup;
    boolean runAsNonRoot;
    int runAsUser;
    'io\.k8s\.api\.core\.v1\.SELinuxOptions seLinuxOptions;
    'io\.k8s\.api\.core\.v1\.WindowsSecurityContextOptions windowsOptions;
};

public type 'io\.k8s\.api\.core\.v1\.Service record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.ServiceSpec spec;
    'io\.k8s\.api\.core\.v1\.ServiceStatus status;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceAccount record { 
    string apiVersion;
    boolean automountServiceAccountToken;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference[] imagePullSecrets;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.core\.v1\.ObjectReference[] secrets;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceAccountList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.ServiceAccount[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceAccountTokenProjection record { 
    string audience;
    int expirationSeconds;
    string path;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceList record { 
    string apiVersion;
    'io\.k8s\.api\.core\.v1\.Service[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.core\.v1\.ServicePort record { 
    string appProtocol;
    string name;
    int nodePort;
    int port;
    string protocol;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString targetPort;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceSpec record { 
    string clusterIP;
    string[] externalIPs;
    string externalName;
    string externalTrafficPolicy;
    int healthCheckNodePort;
    string ipFamily;
    string loadBalancerIP;
    string[] loadBalancerSourceRanges;
    'io\.k8s\.api\.core\.v1\.ServicePort[] ports;
    boolean publishNotReadyAddresses;
    anydata selector;
    string sessionAffinity;
    'io\.k8s\.api\.core\.v1\.SessionAffinityConfig sessionAffinityConfig;
    string[] topologyKeys;
    string 'type;
};

public type 'io\.k8s\.api\.core\.v1\.ServiceStatus record { 
    'io\.k8s\.api\.core\.v1\.LoadBalancerStatus loadBalancer;
};

public type 'io\.k8s\.api\.core\.v1\.SessionAffinityConfig record { 
    'io\.k8s\.api\.core\.v1\.ClientIPConfig clientIP;
};

public type 'io\.k8s\.api\.core\.v1\.StorageOSPersistentVolumeSource record { 
    string fsType;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.ObjectReference secretRef;
    string volumeName;
    string volumeNamespace;
};

public type 'io\.k8s\.api\.core\.v1\.StorageOSVolumeSource record { 
    string fsType;
    boolean readOnly;
    'io\.k8s\.api\.core\.v1\.LocalObjectReference secretRef;
    string volumeName;
    string volumeNamespace;
};

public type 'io\.k8s\.api\.core\.v1\.Sysctl record { 
    string name;
    string value;
};

public type 'io\.k8s\.api\.core\.v1\.TCPSocketAction record { 
    string host;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString port;
};

public type 'io\.k8s\.api\.core\.v1\.Taint record { 
    string effect;
    string key;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time timeAdded;
    string value;
};

public type 'io\.k8s\.api\.core\.v1\.Toleration record { 
    string effect;
    string key;
    string operator;
    int tolerationSeconds;
    string value;
};

public type 'io\.k8s\.api\.core\.v1\.TopologySelectorLabelRequirement record { 
    string key;
    string[] values;
};

public type 'io\.k8s\.api\.core\.v1\.TopologySelectorTerm record { 
    'io\.k8s\.api\.core\.v1\.TopologySelectorLabelRequirement[] matchLabelExpressions;
};

public type 'io\.k8s\.api\.core\.v1\.TopologySpreadConstraint record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector labelSelector;
    int maxSkew;
    string topologyKey;
    string whenUnsatisfiable;
};

public type 'io\.k8s\.api\.core\.v1\.TypedLocalObjectReference record { 
    string apiGroup;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.core\.v1\.Volume record { 
    'io\.k8s\.api\.core\.v1\.AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
    'io\.k8s\.api\.core\.v1\.AzureDiskVolumeSource azureDisk;
    'io\.k8s\.api\.core\.v1\.AzureFileVolumeSource azureFile;
    'io\.k8s\.api\.core\.v1\.CephFSVolumeSource cephfs;
    'io\.k8s\.api\.core\.v1\.CinderVolumeSource cinder;
    'io\.k8s\.api\.core\.v1\.ConfigMapVolumeSource configMap;
    'io\.k8s\.api\.core\.v1\.CSIVolumeSource csi;
    'io\.k8s\.api\.core\.v1\.DownwardAPIVolumeSource downwardAPI;
    'io\.k8s\.api\.core\.v1\.EmptyDirVolumeSource emptyDir;
    'io\.k8s\.api\.core\.v1\.FCVolumeSource fc;
    'io\.k8s\.api\.core\.v1\.FlexVolumeSource flexVolume;
    'io\.k8s\.api\.core\.v1\.FlockerVolumeSource flocker;
    'io\.k8s\.api\.core\.v1\.GCEPersistentDiskVolumeSource gcePersistentDisk;
    'io\.k8s\.api\.core\.v1\.GitRepoVolumeSource gitRepo;
    'io\.k8s\.api\.core\.v1\.GlusterfsVolumeSource glusterfs;
    'io\.k8s\.api\.core\.v1\.HostPathVolumeSource hostPath;
    'io\.k8s\.api\.core\.v1\.ISCSIVolumeSource iscsi;
    string name;
    'io\.k8s\.api\.core\.v1\.NFSVolumeSource nfs;
    'io\.k8s\.api\.core\.v1\.PersistentVolumeClaimVolumeSource persistentVolumeClaim;
    'io\.k8s\.api\.core\.v1\.PhotonPersistentDiskVolumeSource photonPersistentDisk;
    'io\.k8s\.api\.core\.v1\.PortworxVolumeSource portworxVolume;
    'io\.k8s\.api\.core\.v1\.ProjectedVolumeSource projected;
    'io\.k8s\.api\.core\.v1\.QuobyteVolumeSource quobyte;
    'io\.k8s\.api\.core\.v1\.RBDVolumeSource rbd;
    'io\.k8s\.api\.core\.v1\.ScaleIOVolumeSource scaleIO;
    'io\.k8s\.api\.core\.v1\.SecretVolumeSource secret;
    'io\.k8s\.api\.core\.v1\.StorageOSVolumeSource storageos;
    'io\.k8s\.api\.core\.v1\.VsphereVirtualDiskVolumeSource vsphereVolume;
};

public type 'io\.k8s\.api\.core\.v1\.VolumeDevice record { 
    string devicePath;
    string name;
};

public type 'io\.k8s\.api\.core\.v1\.VolumeMount record { 
    string mountPath;
    string mountPropagation;
    string name;
    boolean readOnly;
    string subPath;
    string subPathExpr;
};

public type 'io\.k8s\.api\.core\.v1\.VolumeNodeAffinity record { 
    'io\.k8s\.api\.core\.v1\.NodeSelector required;
};

public type 'io\.k8s\.api\.core\.v1\.VolumeProjection record { 
    'io\.k8s\.api\.core\.v1\.ConfigMapProjection configMap;
    'io\.k8s\.api\.core\.v1\.DownwardAPIProjection downwardAPI;
    'io\.k8s\.api\.core\.v1\.SecretProjection secret;
    'io\.k8s\.api\.core\.v1\.ServiceAccountTokenProjection serviceAccountToken;
};

public type 'io\.k8s\.api\.core\.v1\.VsphereVirtualDiskVolumeSource record { 
    string fsType;
    string storagePolicyID;
    string storagePolicyName;
    string volumePath;
};

public type 'io\.k8s\.api\.core\.v1\.WeightedPodAffinityTerm record { 
    'io\.k8s\.api\.core\.v1\.PodAffinityTerm podAffinityTerm;
    int weight;
};

public type 'io\.k8s\.api\.core\.v1\.WindowsSecurityContextOptions record { 
    string gmsaCredentialSpec;
    string gmsaCredentialSpecName;
    string runAsUserName;
};

public type 'io\.k8s\.api\.discovery\.v1beta1\.Endpoint record { 
    string[] addresses;
    'io\.k8s\.api\.discovery\.v1beta1\.EndpointConditions conditions;
    string hostname;
    'io\.k8s\.api\.core\.v1\.ObjectReference targetRef;
    anydata topology;
};

public type 'io\.k8s\.api\.discovery\.v1beta1\.EndpointConditions record { 
    boolean ready;
};

public type 'io\.k8s\.api\.discovery\.v1beta1\.EndpointPort record { 
    string appProtocol;
    string name;
    int port;
    string protocol;
};

public type 'io\.k8s\.api\.discovery\.v1beta1\.EndpointSlice record { 
    string addressType;
    string apiVersion;
    'io\.k8s\.api\.discovery\.v1beta1\.Endpoint[] endpoints;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.discovery\.v1beta1\.EndpointPort[] ports;
};

public type 'io\.k8s\.api\.discovery\.v1beta1\.EndpointSliceList record { 
    string apiVersion;
    'io\.k8s\.api\.discovery\.v1beta1\.EndpointSlice[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.events\.v1beta1\.Event record { 
    string action;
    string apiVersion;
    int deprecatedCount;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time deprecatedFirstTimestamp;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time deprecatedLastTimestamp;
    'io\.k8s\.api\.core\.v1\.EventSource deprecatedSource;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime eventTime;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string note;
    string reason;
    'io\.k8s\.api\.core\.v1\.ObjectReference regarding;
    'io\.k8s\.api\.core\.v1\.ObjectReference related;
    string reportingController;
    string reportingInstance;
    'io\.k8s\.api\.events\.v1beta1\.EventSeries series;
    string 'type;
};

public type 'io\.k8s\.api\.events\.v1beta1\.EventList record { 
    string apiVersion;
    'io\.k8s\.api\.events\.v1beta1\.Event[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.events\.v1beta1\.EventSeries record { 
    int count;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime lastObservedTime;
    string state;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.HTTPIngressPath record { 
    'io\.k8s\.api\.extensions\.v1beta1\.IngressBackend backend;
    string path;
    string pathType;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.HTTPIngressRuleValue record { 
    'io\.k8s\.api\.extensions\.v1beta1\.HTTPIngressPath[] paths;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.Ingress record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.extensions\.v1beta1\.IngressSpec spec;
    'io\.k8s\.api\.extensions\.v1beta1\.IngressStatus status;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressBackend record { 
    'io\.k8s\.api\.core\.v1\.TypedLocalObjectReference 'resource;
    string serviceName;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString servicePort;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressList record { 
    string apiVersion;
    'io\.k8s\.api\.extensions\.v1beta1\.Ingress[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressRule record { 
    string host;
    'io\.k8s\.api\.extensions\.v1beta1\.HTTPIngressRuleValue http;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressSpec record { 
    'io\.k8s\.api\.extensions\.v1beta1\.IngressBackend backend;
    string ingressClassName;
    'io\.k8s\.api\.extensions\.v1beta1\.IngressRule[] rules;
    'io\.k8s\.api\.extensions\.v1beta1\.IngressTLS[] tls;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressStatus record { 
    'io\.k8s\.api\.core\.v1\.LoadBalancerStatus loadBalancer;
};

public type 'io\.k8s\.api\.extensions\.v1beta1\.IngressTLS record { 
    string[] hosts;
    string secretName;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowDistinguisherMethod record { 
    string 'type;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchema record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaSpec spec;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaStatus status;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaList record { 
    string apiVersion;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchema[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaSpec record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowDistinguisherMethod distinguisherMethod;
    int matchingPrecedence;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationReference priorityLevelConfiguration;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PolicyRulesWithSubjects[] rules;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaStatus record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.FlowSchemaCondition[] conditions;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.GroupSubject record { 
    string name;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.LimitResponse record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.QueuingConfiguration queuing;
    string 'type;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.LimitedPriorityLevelConfiguration record { 
    int assuredConcurrencyShares;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.LimitResponse limitResponse;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.NonResourcePolicyRule record { 
    string[] nonResourceURLs;
    string[] verbs;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PolicyRulesWithSubjects record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.NonResourcePolicyRule[] nonResourceRules;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.ResourcePolicyRule[] resourceRules;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfiguration record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationSpec spec;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationStatus status;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationList record { 
    string apiVersion;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfiguration[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationReference record { 
    string name;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationSpec record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.LimitedPriorityLevelConfiguration limited;
    string 'type;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationStatus record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.PriorityLevelConfigurationCondition[] conditions;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.QueuingConfiguration record { 
    int handSize;
    int queueLengthLimit;
    int queues;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.ResourcePolicyRule record { 
    string[] apiGroups;
    boolean clusterScope;
    string[] namespaces;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.ServiceAccountSubject record { 
    string name;
    string namespace;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.Subject record { 
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.GroupSubject 'group;
    string kind;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.ServiceAccountSubject serviceAccount;
    'io\.k8s\.api\.flowcontrol\.v1alpha1\.UserSubject user;
};

public type 'io\.k8s\.api\.flowcontrol\.v1alpha1\.UserSubject record { 
    string name;
};

public type 'io\.k8s\.api\.networking\.v1\.IPBlock record { 
    string cidr;
    string[] except;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicy record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.networking\.v1\.NetworkPolicySpec spec;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicyEgressRule record { 
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyPort[] ports;
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyPeer[] to;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicyIngressRule record { 
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyPeer[] 'from;
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyPort[] ports;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicyList record { 
    string apiVersion;
    'io\.k8s\.api\.networking\.v1\.NetworkPolicy[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicyPeer record { 
    'io\.k8s\.api\.networking\.v1\.IPBlock ipBlock;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector namespaceSelector;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector podSelector;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicyPort record { 
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString port;
    string protocol;
};

public type 'io\.k8s\.api\.networking\.v1\.NetworkPolicySpec record { 
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyEgressRule[] egress;
    'io\.k8s\.api\.networking\.v1\.NetworkPolicyIngressRule[] ingress;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector podSelector;
    string[] policyTypes;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.HTTPIngressPath record { 
    'io\.k8s\.api\.networking\.v1beta1\.IngressBackend backend;
    string path;
    string pathType;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.HTTPIngressRuleValue record { 
    'io\.k8s\.api\.networking\.v1beta1\.HTTPIngressPath[] paths;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.Ingress record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.networking\.v1beta1\.IngressSpec spec;
    'io\.k8s\.api\.networking\.v1beta1\.IngressStatus status;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressBackend record { 
    'io\.k8s\.api\.core\.v1\.TypedLocalObjectReference 'resource;
    string serviceName;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString servicePort;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressClass record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.networking\.v1beta1\.IngressClassSpec spec;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressClassList record { 
    string apiVersion;
    'io\.k8s\.api\.networking\.v1beta1\.IngressClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressClassSpec record { 
    string controller;
    'io\.k8s\.api\.core\.v1\.TypedLocalObjectReference parameters;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressList record { 
    string apiVersion;
    'io\.k8s\.api\.networking\.v1beta1\.Ingress[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressRule record { 
    string host;
    'io\.k8s\.api\.networking\.v1beta1\.HTTPIngressRuleValue http;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressSpec record { 
    'io\.k8s\.api\.networking\.v1beta1\.IngressBackend backend;
    string ingressClassName;
    'io\.k8s\.api\.networking\.v1beta1\.IngressRule[] rules;
    'io\.k8s\.api\.networking\.v1beta1\.IngressTLS[] tls;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressStatus record { 
    'io\.k8s\.api\.core\.v1\.LoadBalancerStatus loadBalancer;
};

public type 'io\.k8s\.api\.networking\.v1beta1\.IngressTLS record { 
    string[] hosts;
    string secretName;
};

public type 'io\.k8s\.api\.node\.v1alpha1\.Overhead record { 
    anydata podFixed;
};

public type 'io\.k8s\.api\.node\.v1alpha1\.RuntimeClass record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.node\.v1alpha1\.RuntimeClassSpec spec;
};

public type 'io\.k8s\.api\.node\.v1alpha1\.RuntimeClassList record { 
    string apiVersion;
    'io\.k8s\.api\.node\.v1alpha1\.RuntimeClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.node\.v1alpha1\.RuntimeClassSpec record { 
    'io\.k8s\.api\.node\.v1alpha1\.Overhead overhead;
    string runtimeHandler;
    'io\.k8s\.api\.node\.v1alpha1\.Scheduling scheduling;
};

public type 'io\.k8s\.api\.node\.v1alpha1\.Scheduling record { 
    anydata nodeSelector;
    'io\.k8s\.api\.core\.v1\.Toleration[] tolerations;
};

public type 'io\.k8s\.api\.node\.v1beta1\.Overhead record { 
    anydata podFixed;
};

public type 'io\.k8s\.api\.node\.v1beta1\.RuntimeClass record { 
    string apiVersion;
    string handler;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.node\.v1beta1\.Overhead overhead;
    'io\.k8s\.api\.node\.v1beta1\.Scheduling scheduling;
};

public type 'io\.k8s\.api\.node\.v1beta1\.RuntimeClassList record { 
    string apiVersion;
    'io\.k8s\.api\.node\.v1beta1\.RuntimeClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.node\.v1beta1\.Scheduling record { 
    anydata nodeSelector;
    'io\.k8s\.api\.core\.v1\.Toleration[] tolerations;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.AllowedCSIDriver record { 
    string name;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.AllowedFlexVolume record { 
    string driver;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.AllowedHostPath record { 
    string pathPrefix;
    boolean readOnly;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.Eviction record { 
    string apiVersion;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions deleteOptions;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.FSGroupStrategyOptions record { 
    'io\.k8s\.api\.policy\.v1beta1\.IDRange[] ranges;
    string rule;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.HostPortRange record { 
    int max;
    int min;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.IDRange record { 
    int max;
    int min;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudget record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudgetSpec spec;
    'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudgetStatus status;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudgetList record { 
    string apiVersion;
    'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudget[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudgetSpec record { 
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString maxUnavailable;
    'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString minAvailable;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodDisruptionBudgetStatus record { 
    int currentHealthy;
    int desiredHealthy;
    anydata disruptedPods;
    int disruptionsAllowed;
    int expectedPods;
    int observedGeneration;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicy record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicySpec spec;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicyList record { 
    string apiVersion;
    'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicy[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.PodSecurityPolicySpec record { 
    boolean allowPrivilegeEscalation;
    'io\.k8s\.api\.policy\.v1beta1\.AllowedCSIDriver[] allowedCSIDrivers;
    string[] allowedCapabilities;
    'io\.k8s\.api\.policy\.v1beta1\.AllowedFlexVolume[] allowedFlexVolumes;
    'io\.k8s\.api\.policy\.v1beta1\.AllowedHostPath[] allowedHostPaths;
    string[] allowedProcMountTypes;
    string[] allowedUnsafeSysctls;
    string[] defaultAddCapabilities;
    boolean defaultAllowPrivilegeEscalation;
    string[] forbiddenSysctls;
    'io\.k8s\.api\.policy\.v1beta1\.FSGroupStrategyOptions fsGroup;
    boolean hostIPC;
    boolean hostNetwork;
    boolean hostPID;
    'io\.k8s\.api\.policy\.v1beta1\.HostPortRange[] hostPorts;
    boolean privileged;
    boolean readOnlyRootFilesystem;
    string[] requiredDropCapabilities;
    'io\.k8s\.api\.policy\.v1beta1\.RunAsGroupStrategyOptions runAsGroup;
    'io\.k8s\.api\.policy\.v1beta1\.RunAsUserStrategyOptions runAsUser;
    'io\.k8s\.api\.policy\.v1beta1\.RuntimeClassStrategyOptions runtimeClass;
    'io\.k8s\.api\.policy\.v1beta1\.SELinuxStrategyOptions seLinux;
    'io\.k8s\.api\.policy\.v1beta1\.SupplementalGroupsStrategyOptions supplementalGroups;
    string[] volumes;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.RunAsGroupStrategyOptions record { 
    'io\.k8s\.api\.policy\.v1beta1\.IDRange[] ranges;
    string rule;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.RunAsUserStrategyOptions record { 
    'io\.k8s\.api\.policy\.v1beta1\.IDRange[] ranges;
    string rule;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.RuntimeClassStrategyOptions record { 
    string[] allowedRuntimeClassNames;
    string defaultRuntimeClassName;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.SELinuxStrategyOptions record { 
    string rule;
    'io\.k8s\.api\.core\.v1\.SELinuxOptions seLinuxOptions;
};

public type 'io\.k8s\.api\.policy\.v1beta1\.SupplementalGroupsStrategyOptions record { 
    'io\.k8s\.api\.policy\.v1beta1\.IDRange[] ranges;
    string rule;
};

public type 'io\.k8s\.api\.rbac\.v1\.AggregationRule record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector[] clusterRoleSelectors;
};

public type 'io\.k8s\.api\.rbac\.v1\.ClusterRole record { 
    'io\.k8s\.api\.rbac\.v1\.AggregationRule aggregationRule;
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1\.ClusterRoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1\.ClusterRoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1\.ClusterRoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1\.ClusterRoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1\.ClusterRole[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1\.PolicyRule record { 
    string[] apiGroups;
    string[] nonResourceURLs;
    string[] resourceNames;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.rbac\.v1\.Role record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1\.RoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1\.RoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1\.RoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1\.RoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1\.Role[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1\.RoleRef record { 
    string apiGroup;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.rbac\.v1\.Subject record { 
    string apiGroup;
    string kind;
    string name;
    string namespace;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.AggregationRule record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector[] clusterRoleSelectors;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRole record { 
    'io\.k8s\.api\.rbac\.v1alpha1\.AggregationRule aggregationRule;
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1alpha1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1alpha1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1alpha1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1alpha1\.ClusterRole[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.PolicyRule record { 
    string[] apiGroups;
    string[] nonResourceURLs;
    string[] resourceNames;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.Role record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1alpha1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.RoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1alpha1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1alpha1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.RoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1alpha1\.RoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.RoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1alpha1\.Role[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.RoleRef record { 
    string apiGroup;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.rbac\.v1alpha1\.Subject record { 
    string apiVersion;
    string kind;
    string name;
    string namespace;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.AggregationRule record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector[] clusterRoleSelectors;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.ClusterRole record { 
    'io\.k8s\.api\.rbac\.v1beta1\.AggregationRule aggregationRule;
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1beta1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1beta1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1beta1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.ClusterRoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1beta1\.ClusterRole[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.PolicyRule record { 
    string[] apiGroups;
    string[] nonResourceURLs;
    string[] resourceNames;
    string[] resources;
    string[] verbs;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.Role record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1beta1\.PolicyRule[] rules;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.RoleBinding record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.rbac\.v1beta1\.RoleRef roleRef;
    'io\.k8s\.api\.rbac\.v1beta1\.Subject[] subjects;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.RoleBindingList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1beta1\.RoleBinding[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.RoleList record { 
    string apiVersion;
    'io\.k8s\.api\.rbac\.v1beta1\.Role[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.RoleRef record { 
    string apiGroup;
    string kind;
    string name;
};

public type 'io\.k8s\.api\.rbac\.v1beta1\.Subject record { 
    string apiGroup;
    string kind;
    string name;
    string namespace;
};

public type 'io\.k8s\.api\.scheduling\.v1\.PriorityClass record { 
    string apiVersion;
    string description;
    boolean globalDefault;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string preemptionPolicy;
    int value;
};

public type 'io\.k8s\.api\.scheduling\.v1\.PriorityClassList record { 
    string apiVersion;
    'io\.k8s\.api\.scheduling\.v1\.PriorityClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.scheduling\.v1alpha1\.PriorityClass record { 
    string apiVersion;
    string description;
    boolean globalDefault;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string preemptionPolicy;
    int value;
};

public type 'io\.k8s\.api\.scheduling\.v1alpha1\.PriorityClassList record { 
    string apiVersion;
    'io\.k8s\.api\.scheduling\.v1alpha1\.PriorityClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.scheduling\.v1beta1\.PriorityClass record { 
    string apiVersion;
    string description;
    boolean globalDefault;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string preemptionPolicy;
    int value;
};

public type 'io\.k8s\.api\.scheduling\.v1beta1\.PriorityClassList record { 
    string apiVersion;
    'io\.k8s\.api\.scheduling\.v1beta1\.PriorityClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.settings\.v1alpha1\.PodPreset record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.settings\.v1alpha1\.PodPresetSpec spec;
};

public type 'io\.k8s\.api\.settings\.v1alpha1\.PodPresetList record { 
    string apiVersion;
    'io\.k8s\.api\.settings\.v1alpha1\.PodPreset[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.settings\.v1alpha1\.PodPresetSpec record { 
    'io\.k8s\.api\.core\.v1\.EnvVar[] env;
    'io\.k8s\.api\.core\.v1\.EnvFromSource[] envFrom;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector selector;
    'io\.k8s\.api\.core\.v1\.VolumeMount[] volumeMounts;
    'io\.k8s\.api\.core\.v1\.Volume[] volumes;
};

public type 'io\.k8s\.api\.storage\.v1\.CSIDriver record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1\.CSIDriverSpec spec;
};

public type 'io\.k8s\.api\.storage\.v1\.CSIDriverList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1\.CSIDriver[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1\.CSIDriverSpec record { 
    boolean attachRequired;
    boolean podInfoOnMount;
    string[] volumeLifecycleModes;
};

public type 'io\.k8s\.api\.storage\.v1\.CSINode record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1\.CSINodeSpec spec;
};

public type 'io\.k8s\.api\.storage\.v1\.CSINodeDriver record { 
    'io\.k8s\.api\.storage\.v1\.VolumeNodeResources allocatable;
    string name;
    string nodeID;
    string[] topologyKeys;
};

public type 'io\.k8s\.api\.storage\.v1\.CSINodeList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1\.CSINode[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1\.CSINodeSpec record { 
    'io\.k8s\.api\.storage\.v1\.CSINodeDriver[] drivers;
};

public type 'io\.k8s\.api\.storage\.v1\.StorageClass record { 
    boolean allowVolumeExpansion;
    'io\.k8s\.api\.core\.v1\.TopologySelectorTerm[] allowedTopologies;
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string[] mountOptions;
    anydata parameters;
    string provisioner;
    string reclaimPolicy;
    string volumeBindingMode;
};

public type 'io\.k8s\.api\.storage\.v1\.StorageClassList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1\.StorageClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeAttachment record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1\.VolumeAttachmentSpec spec;
    'io\.k8s\.api\.storage\.v1\.VolumeAttachmentStatus status;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeAttachmentList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1\.VolumeAttachment[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeAttachmentSource record { 
    'io\.k8s\.api\.core\.v1\.PersistentVolumeSpec inlineVolumeSpec;
    string persistentVolumeName;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeAttachmentSpec record { 
    string attacher;
    string nodeName;
    'io\.k8s\.api\.storage\.v1\.VolumeAttachmentSource 'source;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeAttachmentStatus record { 
    'io\.k8s\.api\.storage\.v1\.VolumeError attachError;
    boolean attached;
    anydata attachmentMetadata;
    'io\.k8s\.api\.storage\.v1\.VolumeError detachError;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeError record { 
    string message;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time time;
};

public type 'io\.k8s\.api\.storage\.v1\.VolumeNodeResources record { 
    int count;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachment record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentSpec spec;
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentStatus status;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachment[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentSource record { 
    'io\.k8s\.api\.core\.v1\.PersistentVolumeSpec inlineVolumeSpec;
    string persistentVolumeName;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentSpec record { 
    string attacher;
    string nodeName;
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentSource 'source;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeAttachmentStatus record { 
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeError attachError;
    boolean attached;
    anydata attachmentMetadata;
    'io\.k8s\.api\.storage\.v1alpha1\.VolumeError detachError;
};

public type 'io\.k8s\.api\.storage\.v1alpha1\.VolumeError record { 
    string message;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time time;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSIDriver record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1beta1\.CSIDriverSpec spec;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSIDriverList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1beta1\.CSIDriver[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSIDriverSpec record { 
    boolean attachRequired;
    boolean podInfoOnMount;
    string[] volumeLifecycleModes;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSINode record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1beta1\.CSINodeSpec spec;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSINodeDriver record { 
    'io\.k8s\.api\.storage\.v1beta1\.VolumeNodeResources allocatable;
    string name;
    string nodeID;
    string[] topologyKeys;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSINodeList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1beta1\.CSINode[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.CSINodeSpec record { 
    'io\.k8s\.api\.storage\.v1beta1\.CSINodeDriver[] drivers;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.StorageClass record { 
    boolean allowVolumeExpansion;
    'io\.k8s\.api\.core\.v1\.TopologySelectorTerm[] allowedTopologies;
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    string[] mountOptions;
    anydata parameters;
    string provisioner;
    string reclaimPolicy;
    string volumeBindingMode;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.StorageClassList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1beta1\.StorageClass[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachment record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentSpec spec;
    'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentStatus status;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentList record { 
    string apiVersion;
    'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachment[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentSource record { 
    'io\.k8s\.api\.core\.v1\.PersistentVolumeSpec inlineVolumeSpec;
    string persistentVolumeName;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentSpec record { 
    string attacher;
    string nodeName;
    'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentSource 'source;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeAttachmentStatus record { 
    'io\.k8s\.api\.storage\.v1beta1\.VolumeError attachError;
    boolean attached;
    anydata attachmentMetadata;
    'io\.k8s\.api\.storage\.v1beta1\.VolumeError detachError;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeError record { 
    string message;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time time;
};

public type 'io\.k8s\.api\.storage\.v1beta1\.VolumeNodeResources record { 
    int count;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceColumnDefinition record { 
    string description;
    string format;
    string jsonPath;
    string name;
    int priority;
    string 'type;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceConversion record { 
    string strategy;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.WebhookConversion webhook;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinition record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionSpec spec;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionStatus status;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionList record { 
    string apiVersion;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinition[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionNames record { 
    string[] categories;
    string kind;
    string listKind;
    string plural;
    string[] shortNames;
    string singular;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionSpec record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceConversion conversion;
    string 'group;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionNames names;
    boolean preserveUnknownFields;
    string scope;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionVersion[] versions;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionStatus record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionNames acceptedNames;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionCondition[] conditions;
    string[] storedVersions;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceDefinitionVersion record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceColumnDefinition[] additionalPrinterColumns;
    string name;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceValidation schema;
    boolean served;
    boolean storage;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresources subresources;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresourceScale record { 
    string labelSelectorPath;
    string specReplicasPath;
    string statusReplicasPath;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresourceStatus record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresources record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresourceScale scale;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceSubresourceStatus status;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.CustomResourceValidation record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps openAPIV3Schema;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.ExternalDocumentation record { 
    string description;
    string url;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSON record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps record { 
    string 'ref;
    string 'schema;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrBool additionalItems;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrBool additionalProperties;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps[] allOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps[] anyOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSON 'default;
    anydata definitions;
    anydata dependencies;
    string description;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSON[] enum;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSON example;
    boolean exclusiveMaximum;
    boolean exclusiveMinimum;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.ExternalDocumentation externalDocs;
    string format;
    string id;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrArray items;
    int maxItems;
    int maxLength;
    int maxProperties;
    float maximum;
    int minItems;
    int minLength;
    int minProperties;
    float minimum;
    float multipleOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps? not;
    boolean nullable;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaProps[] oneOf;
    string pattern;
    anydata patternProperties;
    anydata properties;
    string[] required;
    string title;
    string 'type;
    boolean uniqueItems;
    boolean 'xkubernetesembeddedresource;
    boolean 'xkubernetesintorstring;
    string[] 'xkuberneteslistmapkeys;
    string 'xkuberneteslisttype;
    string 'xkubernetesmaptype;
    boolean 'xkubernetespreserveunknownfields;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrArray record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrBool record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.JSONSchemaPropsOrStringArray record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.ServiceReference record { 
    string name;
    string namespace;
    string path;
    int port;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.WebhookClientConfig record { 
    string caBundle;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.ServiceReference 'service;
    string url;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.WebhookConversion record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1\.WebhookClientConfig clientConfig;
    string[] conversionReviewVersions;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceColumnDefinition record { 
    string JSONPath;
    string description;
    string format;
    string name;
    int priority;
    string 'type;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceConversion record { 
    string[] conversionReviewVersions;
    string strategy;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.WebhookClientConfig webhookClientConfig;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinition record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionSpec spec;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionStatus status;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionList record { 
    string apiVersion;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinition[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionNames record { 
    string[] categories;
    string kind;
    string listKind;
    string plural;
    string[] shortNames;
    string singular;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionSpec record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceColumnDefinition[] additionalPrinterColumns;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceConversion conversion;
    string 'group;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionNames names;
    boolean preserveUnknownFields;
    string scope;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresources subresources;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceValidation validation;
    string 'version;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionVersion[] versions;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionStatus record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionNames acceptedNames;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionCondition[] conditions;
    string[] storedVersions;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceDefinitionVersion record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceColumnDefinition[] additionalPrinterColumns;
    string name;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceValidation schema;
    boolean served;
    boolean storage;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresources subresources;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresourceScale record { 
    string labelSelectorPath;
    string specReplicasPath;
    string statusReplicasPath;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresourceStatus record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresources record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresourceScale scale;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceSubresourceStatus status;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.CustomResourceValidation record { 
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps openAPIV3Schema;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.ExternalDocumentation record { 
    string description;
    string url;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSON record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps record { 
    string 'ref;
    string 'schema;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrBool additionalItems;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrBool additionalProperties;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps[] allOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps[] anyOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSON 'default;
    anydata definitions;
    anydata dependencies;
    string description;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSON[] enum;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSON example;
    boolean exclusiveMaximum;
    boolean exclusiveMinimum;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.ExternalDocumentation externalDocs;
    string format;
    string id;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrArray items;
    int maxItems;
    int maxLength;
    int maxProperties;
    float maximum;
    int minItems;
    int minLength;
    int minProperties;
    float minimum;
    float multipleOf;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps? not;
    boolean nullable;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaProps[] oneOf;
    string pattern;
    anydata patternProperties;
    anydata properties;
    string[] required;
    string title;
    string 'type;
    boolean uniqueItems;
    boolean 'xkubernetesembeddedresource;
    boolean 'xkubernetesintorstring;
    string[] 'xkuberneteslistmapkeys;
    string 'xkuberneteslisttype;
    string 'xkubernetesmaptype;
    boolean 'xkubernetespreserveunknownfields;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrArray record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrBool record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.JSONSchemaPropsOrStringArray record { 
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.ServiceReference record { 
    string name;
    string namespace;
    string path;
    int port;
};

public type 'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.WebhookClientConfig record { 
    string caBundle;
    'io\.k8s\.apiextensionsapiserver\.pkg\.apis\.apiextensions\.v1beta1\.ServiceReference 'service;
    string url;
};

public type 'io\.k8s\.apimachinery\.pkg\.api\.resource\.Quantity record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIGroup record { 
    string apiVersion;
    string kind;
    string name;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.GroupVersionForDiscovery preferredVersion;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ServerAddressByClientCIDR[] serverAddressByClientCIDRs;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.GroupVersionForDiscovery[] versions;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIGroupList record { 
    string apiVersion;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIGroup[] groups;
    string kind;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIResource record { 
    string[] categories;
    string 'group;
    string kind;
    string name;
    boolean namespaced;
    string[] shortNames;
    string singularName;
    string storageVersionHash;
    string[] verbs;
    string 'version;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIResourceList record { 
    string apiVersion;
    string groupVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIResource[] resources;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.APIVersions record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ServerAddressByClientCIDR[] serverAddressByClientCIDRs;
    string[] versions;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.DeleteOptions record { 
    string apiVersion;
    string[] dryRun;
    int gracePeriodSeconds;
    string kind;
    boolean orphanDependents;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Preconditions preconditions;
    string propagationPolicy;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.FieldsV1 record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.GroupVersionForDiscovery record { 
    string groupVersion;
    string 'version;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelector record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelectorRequirement[] matchExpressions;
    anydata matchLabels;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.LabelSelectorRequirement record { 
    string key;
    string operator;
    string[] values;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta record { 
    string 'continue;
    int remainingItemCount;
    string resourceVersion;
    string selfLink;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ManagedFieldsEntry record { 
    string apiVersion;
    string fieldsType;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.FieldsV1 fieldsV1;
    string manager;
    string operation;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time time;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.MicroTime record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta record { 
    anydata annotations;
    string clusterName;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time creationTimestamp;
    int deletionGracePeriodSeconds;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time deletionTimestamp;
    string[] finalizers;
    string generateName;
    int generation;
    anydata labels;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ManagedFieldsEntry[] managedFields;
    string name;
    string namespace;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.OwnerReference[] ownerReferences;
    string resourceVersion;
    string selfLink;
    string uid;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.OwnerReference record { 
    string apiVersion;
    boolean blockOwnerDeletion;
    boolean controller;
    string kind;
    string name;
    string uid;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Patch record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Preconditions record { 
    string resourceVersion;
    string uid;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ServerAddressByClientCIDR record { 
    string clientCIDR;
    string serverAddress;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Status record { 
    string apiVersion;
    int code;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.StatusDetails details;
    string kind;
    string message;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
    string reason;
    string status;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.StatusCause record { 
    string 'field;
    string message;
    string reason;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.StatusDetails record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.StatusCause[] causes;
    string 'group;
    string kind;
    string name;
    int retryAfterSeconds;
    string uid;
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.WatchEvent record { 
    'io\.k8s\.apimachinery\.pkg\.runtime\.RawExtension 'object;
    string 'type;
};

public type 'io\.k8s\.apimachinery\.pkg\.runtime\.RawExtension record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.util\.intstr\.IntOrString record { 
};

public type 'io\.k8s\.apimachinery\.pkg\.version\.Info record { 
    string buildDate;
    string compiler;
    string gitCommit;
    string gitTreeState;
    string gitVersion;
    string goVersion;
    string major;
    string minor;
    string platform;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIService record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceSpec spec;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceStatus status;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceList record { 
    string apiVersion;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIService[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceSpec record { 
    string caBundle;
    string 'group;
    int groupPriorityMinimum;
    boolean insecureSkipTLSVerify;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.ServiceReference 'service;
    string 'version;
    int versionPriority;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceStatus record { 
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.APIServiceCondition[] conditions;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1\.ServiceReference record { 
    string name;
    string namespace;
    int port;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIService record { 
    string apiVersion;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ObjectMeta metadata;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceSpec spec;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceStatus status;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceCondition record { 
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.Time lastTransitionTime;
    string message;
    string reason;
    string status;
    string 'type;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceList record { 
    string apiVersion;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIService[] items;
    string kind;
    'io\.k8s\.apimachinery\.pkg\.apis\.meta\.v1\.ListMeta metadata;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceSpec record { 
    string caBundle;
    string 'group;
    int groupPriorityMinimum;
    boolean insecureSkipTLSVerify;
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.ServiceReference 'service;
    string 'version;
    int versionPriority;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceStatus record { 
    'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.APIServiceCondition[] conditions;
};

public type 'io\.k8s\.kubeaggregator\.pkg\.apis\.apiregistration\.v1beta1\.ServiceReference record { 
    string name;
    string namespace;
    int port;
};