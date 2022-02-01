#if swift(>=4.0)
@objcMembers public class NavEventData: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Type of the event. Supported values [BUTTON_CLICK, DID_FOCUS, DID_BLUR]
     */
    public let eventType: String
    /**
     MiniApp view identifier to indicate the view instance that is firing the event. This is needed when more than one instance of the same component is mounted.
     */
    public let viewId: String?
    /**
     optional payload associated with the event
     */
    public let jsonPayload: String?

    public init(eventType: String, viewId: String?, jsonPayload: String?) {
        self.eventType = eventType
        self.viewId = viewId
        self.jsonPayload = jsonPayload
        super.init()
    }

    public override init() {
        self.eventType = String()
        self.viewId = nil
        self.jsonPayload = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let eventType = dictionary["eventType"] as? String {
            self.eventType = eventType
        } else {
            assertionFailure("\(NavEventData.tag) missing one or more required properties [eventType]")
            self.eventType = dictionary["eventType"] as! String
        }

        if let viewId = dictionary["viewId"] as? String {
            self.viewId = viewId
        } else {
            self.viewId = nil
        }
        if let jsonPayload = dictionary["jsonPayload"] as? String {
            self.jsonPayload = jsonPayload
        } else {
            self.jsonPayload = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["eventType"] = self.eventType

        if let nonNullViewId = self.viewId {
            dict["viewId"] = nonNullViewId
        }
        if let nonNullJsonPayload = self.jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        return dict as NSDictionary
    }
}

#else

public class NavEventData: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Type of the event. Supported values [BUTTON_CLICK, DID_FOCUS, DID_BLUR]
     */
    public let eventType: String
    /**
     MiniApp view identifier to indicate the view instance that is firing the event. This is needed when more than one instance of the same component is mounted.
     */
    public let viewId: String?
    /**
     optional payload associated with the event
     */
    public let jsonPayload: String?

    public init(eventType: String, viewId: String?, jsonPayload: String?) {
        self.eventType = eventType
        self.viewId = viewId
        self.jsonPayload = jsonPayload
        super.init()
    }

    public override init() {
        self.eventType = String()
        self.viewId = nil
        self.jsonPayload = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let eventType = dictionary["eventType"] as? String {
            self.eventType = eventType
        } else {
            assertionFailure("\(NavEventData.tag) missing one or more required properties [eventType]")
            self.eventType = dictionary["eventType"] as! String
        }

        if let viewId = dictionary["viewId"] as? String {
            self.viewId = viewId
        } else {
            self.viewId = nil
        }
        if let jsonPayload = dictionary["jsonPayload"] as? String {
            self.jsonPayload = jsonPayload
        } else {
            self.jsonPayload = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["eventType"] = self.eventType

        if let nonNullViewId = self.viewId {
            dict["viewId"] = nonNullViewId
        }
        if let nonNullJsonPayload = self.jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        return dict as NSDictionary
    }
}
#endif
