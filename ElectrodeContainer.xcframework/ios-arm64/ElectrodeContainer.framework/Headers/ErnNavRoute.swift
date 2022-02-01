#if swift(>=4.0)
@objcMembers public class ErnNavRoute: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Path of the Route. Mostly the name of the container(defined by the native app) or the miniapp name. The content of the path is mainly determined by the native implemenation of the API
     */
    public let path: String
    /**
     Optional Payload (respresented as JSON String) needed by the screen you are trying to navigate to.
     */
    public let jsonPayload: String?
    public let navigationBar: NavigationBar?
    /**
     If set to true, the view component would be displayed over a transparent theme. Default value is false.
     */
    public let overlay: Bool?
    /**
     Set to true if you would like to re-render a component while navigating back to it.
     */
    public let refresh: Bool?
    /**
     Set to true if you would like to replace the last page with the new one.
     */
    public let replace: Bool?

    public init(path: String, jsonPayload: String?, navigationBar: NavigationBar?, overlay: Bool?, refresh: Bool?, replace: Bool?) {
        self.path = path
        self.jsonPayload = jsonPayload
        self.navigationBar = navigationBar
        self.overlay = overlay
        self.refresh = refresh
        self.replace = replace
        super.init()
    }

    public override init() {
        self.path = String()
        self.jsonPayload = nil
        self.navigationBar = nil
        self.overlay = nil
        self.refresh = nil
        self.replace = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let path = dictionary["path"] as? String {
            self.path = path
        } else {
            assertionFailure("\(ErnNavRoute.tag) missing one or more required properties [path]")
            self.path = dictionary["path"] as! String
        }

        if let jsonPayload = dictionary["jsonPayload"] as? String {
            self.jsonPayload = jsonPayload
        } else {
            self.jsonPayload = nil
        }
        if let navigationBarDict = dictionary["navigationBar"] as? [AnyHashable: Any] {
            self.navigationBar = NavigationBar(dictionary: navigationBarDict)
        } else {
            self.navigationBar = nil
        }
        if let overlay = dictionary["overlay"] as? Bool {
            self.overlay = overlay
        } else {
            self.overlay = nil
        }
        if let refresh = dictionary["refresh"] as? Bool {
            self.refresh = refresh
        } else {
            self.refresh = nil
        }
        if let replace = dictionary["replace"] as? Bool {
            self.replace = replace
        } else {
            self.replace = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["path"] = self.path

        if let nonNullJsonPayload = self.jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        if let nonNullNavigationBar = self.navigationBar {
            dict["navigationBar"] = nonNullNavigationBar.toDictionary()
        }
        if let nonNullOverlay = self.overlay {
            dict["overlay"] = nonNullOverlay
        }
        if let nonNullRefresh = self.refresh {
            dict["refresh"] = nonNullRefresh
        }
        if let nonNullReplace = self.replace {
            dict["replace"] = nonNullReplace
        }
        return dict as NSDictionary
    }
}

#else

public class ErnNavRoute: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Path of the Route. Mostly the name of the container(defined by the native app) or the miniapp name. The content of the path is mainly determined by the native implemenation of the API
     */
    public let path: String
    /**
     Optional Payload (respresented as JSON String) needed by the screen you are trying to navigate to.
     */
    public let jsonPayload: String?
    public let navigationBar: NavigationBar?
    /**
     If set to true, the view component would be displayed over a transparent theme. Default value is false.
     */
    public let overlay: Bool?
    /**
     Set to true if you would like to re-render a component while navigating back to it.
     */
    public let refresh: Bool?
    /**
     Set to true if you would like to replace the last page with the new one.
     */
    public let replace: Bool?

    public init(path: String, jsonPayload: String?, navigationBar: NavigationBar?, overlay: Bool?, refresh: Bool?, replace: Bool?) {
        self.path = path
        self.jsonPayload = jsonPayload
        self.navigationBar = navigationBar
        self.overlay = overlay
        self.refresh = refresh
        self.replace = replace
        super.init()
    }

    public override init() {
        self.path = String()
        self.jsonPayload = nil
        self.navigationBar = nil
        self.overlay = nil
        self.refresh = nil
        self.replace = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {
        if let path = dictionary["path"] as? String {
            self.path = path
        } else {
            assertionFailure("\(ErnNavRoute.tag) missing one or more required properties [path]")
            self.path = dictionary["path"] as! String
        }

        if let jsonPayload = dictionary["jsonPayload"] as? String {
            self.jsonPayload = jsonPayload
        } else {
            self.jsonPayload = nil
        }
        if let navigationBarDict = dictionary["navigationBar"] as? [AnyHashable: Any] {
            self.navigationBar = NavigationBar(dictionary: navigationBarDict)
        } else {
            self.navigationBar = nil
        }
        if let overlay = dictionary["overlay"] as? Bool {
            self.overlay = overlay
        } else {
            self.overlay = nil
        }
        if let refresh = dictionary["refresh"] as? Bool {
            self.refresh = refresh
        } else {
            self.refresh = nil
        }
        if let replace = dictionary["replace"] as? Bool {
            self.replace = replace
        } else {
            self.replace = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]

        dict["path"] = self.path

        if let nonNullJsonPayload = self.jsonPayload {
            dict["jsonPayload"] = nonNullJsonPayload
        }
        if let nonNullNavigationBar = self.navigationBar {
            dict["navigationBar"] = nonNullNavigationBar.toDictionary()
        }
        if let nonNullOverlay = self.overlay {
            dict["overlay"] = nonNullOverlay
        }
        if let nonNullRefresh = self.refresh {
            dict["refresh"] = nonNullRefresh
        }
        if let nonNullReplace = self.replace {
            dict["replace"] = nonNullReplace
        }
        return dict as NSDictionary
    }
}
#endif
