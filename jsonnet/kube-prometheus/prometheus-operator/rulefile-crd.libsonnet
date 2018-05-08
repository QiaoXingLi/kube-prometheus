{"apiVersion":"apiextensions.k8s.io/v1beta1","kind":"CustomResourceDefinition","metadata":{"creationTimestamp":null,"name":"rulefiles.monitoring.coreos.com"},"spec":{"group":"monitoring.coreos.com","names":{"kind":"RuleFile","plural":"rulefiles"},"scope":"Namespaced","validation":{"openAPIV3Schema":{"description":"RuleFile defines alerting rules for a Prometheus instance","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources","type":"string"},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"metadata":{"description":"ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.","properties":{"annotations":{"description":"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations","type":"object"},"clusterName":{"description":"The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.","type":"string"},"creationTimestamp":{"format":"date-time","type":"string"},"deletionGracePeriodSeconds":{"description":"Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.","format":"int64","type":"integer"},"deletionTimestamp":{"format":"date-time","type":"string"},"finalizers":{"description":"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed.","items":{"type":"string"},"type":"array"},"generateName":{"description":"GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\n\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\n\nApplied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#idempotency","type":"string"},"generation":{"description":"A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.","format":"int64","type":"integer"},"initializers":{"description":"Initializers tracks the progress of initialization.","properties":{"pending":{"description":"Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.","items":{"description":"Initializer is information about an initializer that has not yet completed.","properties":{"name":{"description":"name of the process that is responsible for initializing this object.","type":"string"}},"required":["name"]},"type":"array"},"result":{"description":"Status is a return value for calls that don't return other objects.","properties":{"apiVersion":{"description":"APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#resources","type":"string"},"code":{"description":"Suggested HTTP return code for this status, 0 if not set.","format":"int32","type":"integer"},"details":{"description":"StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.","properties":{"causes":{"description":"The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.","items":{"description":"StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.","properties":{"field":{"description":"The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.\n\nExamples:\n  \"name\" - the field \"name\" on the current resource\n  \"items[0].name\" - the field \"name\" on the first array entry in \"items\"","type":"string"},"message":{"description":"A human-readable description of the cause of the error.  This field may be presented as-is to a reader.","type":"string"},"reason":{"description":"A machine-readable description of the cause of the error. If this value is empty there is no information available.","type":"string"}}},"type":"array"},"group":{"description":"The group attribute of the resource associated with the status StatusReason.","type":"string"},"kind":{"description":"The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"name":{"description":"The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).","type":"string"},"retryAfterSeconds":{"description":"If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.","format":"int32","type":"integer"},"uid":{"description":"UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids","type":"string"}}},"kind":{"description":"Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"message":{"description":"A human-readable description of the status of this operation.","type":"string"},"metadata":{"description":"ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.","properties":{"continue":{"description":"continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response.","type":"string"},"resourceVersion":{"description":"String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency","type":"string"},"selfLink":{"description":"selfLink is a URL representing this object. Populated by the system. Read-only.","type":"string"}}},"reason":{"description":"A machine-readable description of why this operation is in the \"Failure\" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.","type":"string"},"status":{"description":"Status of the operation. One of: \"Success\" or \"Failure\". More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status","type":"string"}}}},"required":["pending"]},"labels":{"description":"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels","type":"object"},"name":{"description":"Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names","type":"string"},"namespace":{"description":"Namespace defines the space within each name must be unique. An empty namespace is equivalent to the \"default\" namespace, but \"default\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\n\nMust be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces","type":"string"},"ownerReferences":{"description":"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.","items":{"description":"OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.","properties":{"apiVersion":{"description":"API version of the referent.","type":"string"},"blockOwnerDeletion":{"description":"If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.","type":"boolean"},"controller":{"description":"If true, this reference points to the managing controller.","type":"boolean"},"kind":{"description":"Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds","type":"string"},"name":{"description":"Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names","type":"string"},"uid":{"description":"UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids","type":"string"}},"required":["apiVersion","kind","name","uid"]},"type":"array"},"resourceVersion":{"description":"An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\n\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency","type":"string"},"selfLink":{"description":"SelfLink is a URL representing this object. Populated by the system. Read-only.","type":"string"},"uid":{"description":"UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\n\nPopulated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids","type":"string"}}},"spec":{"description":"RuleFileSpec contains specification parameters for a Rule.","properties":{"groups":{"description":"Content of Prometheus rule file","items":{"description":"RuleGroup is a list of sequentially evaluated recording and alerting rules.","properties":{"interval":{"format":"int64","type":"integer"},"name":{"type":"string"},"rules":{"items":{"description":"Rule describes an alerting or recording rule.","properties":{"alert":{"type":"string"},"annotations":{"type":"object"},"expr":{"type":"string"},"for":{"format":"int64","type":"integer"},"labels":{"type":"object"},"record":{"type":"string"}},"required":["expr"]},"type":"array"}},"required":["name","rules"]},"type":"array"}}}},"required":["spec"]}},"version":"v1"},"status":{"acceptedNames":{"kind":"","plural":""},"conditions":null}}