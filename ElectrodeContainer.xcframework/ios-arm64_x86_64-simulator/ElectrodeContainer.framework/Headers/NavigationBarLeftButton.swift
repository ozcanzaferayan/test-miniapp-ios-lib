#if swift(>=4.0)
@objcMembers public class NavigationBarLeftButton: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Button title if any, applied only for iOS.
     */
    public let title: String?
    /**
     Icon resource identifier that can be used find the icon
     */
    public let icon: String?
    /**
     Specifies a tint for the icon. Supported formats: #RRGGBB, #AARRGGBB. Supported values: red, blue, green, black, white, gray, cyan, magenta, yellow, lightgray, darkgray, grey, lightgrey, darkgrey, aqua, fuchsia, lime, maroon, navy, olive, purple, silver and teal
     */
    public let tint: String?
    /**
     Id of the button, this namespace will be used as an identifier when a button click event is emitted. If included, click will not be handled by native instead an event will be fired for react native to handle the backpress.
     */
    public let id: String?
    /**
     Default to false. If set to true the button will be disabled(non-clickable). Android will remove the left icon indicator
     */
    public let disabled: Bool?
    /**
     Accessibility label
     */
    public let adaLabel: String?

    public init(title: String?, icon: String?, tint: String?, id: String?, disabled: Bool?, adaLabel: String?) {
        self.title = title
        self.icon = icon
        self.tint = tint
        self.id = id
        self.disabled = disabled
        self.adaLabel = adaLabel
        super.init()
    }

    public override init() {
        self.title = nil
        self.icon = nil
        self.tint = nil
        self.id = nil
        self.disabled = nil
        self.adaLabel = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {

        if let title = dictionary["title"] as? String {
            self.title = title
        } else {
            self.title = nil
        }
        if let icon = dictionary["icon"] as? String {
            self.icon = icon
        } else {
            self.icon = nil
        }
        if let tint = dictionary["tint"] as? String {
            self.tint = tint
        } else {
            self.tint = nil
        }
        if let id = dictionary["id"] as? String {
            self.id = id
        } else {
            self.id = nil
        }
        if let disabled = dictionary["disabled"] as? Bool {
            self.disabled = disabled
        } else {
            self.disabled = nil
        }
        if let adaLabel = dictionary["adaLabel"] as? String {
            self.adaLabel = adaLabel
        } else {
            self.adaLabel = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]


        if let nonNullTitle = self.title {
            dict["title"] = nonNullTitle
        }
        if let nonNullIcon = self.icon {
            dict["icon"] = nonNullIcon
        }
        if let nonNullTint = self.tint {
            dict["tint"] = nonNullTint
        }
        if let nonNullId = self.id {
            dict["id"] = nonNullId
        }
        if let nonNullDisabled = self.disabled {
            dict["disabled"] = nonNullDisabled
        }
        if let nonNullAdaLabel = self.adaLabel {
            dict["adaLabel"] = nonNullAdaLabel
        }
        return dict as NSDictionary
    }
}

#else

public class NavigationBarLeftButton: ElectrodeObject, Bridgeable {
    private static let tag = String(describing: type(of: self))

    /**
     Button title if any, applied only for iOS.
     */
    public let title: String?
    /**
     Icon resource identifier that can be used find the icon
     */
    public let icon: String?
    /**
     Specifies a tint for the icon. Supported formats: #RRGGBB, #AARRGGBB. Supported values: red, blue, green, black, white, gray, cyan, magenta, yellow, lightgray, darkgray, grey, lightgrey, darkgrey, aqua, fuchsia, lime, maroon, navy, olive, purple, silver and teal
     */
    public let tint: String?
    /**
     Id of the button, this namespace will be used as an identifier when a button click event is emitted. If included, click will not be handled by native instead an event will be fired for react native to handle the backpress.
     */
    public let id: String?
    /**
     Default to false. If set to true the button will be disabled(non-clickable). Android will remove the left icon indicator
     */
    public let disabled: Bool?
    /**
     Accessibility label
     */
    public let adaLabel: String?

    public init(title: String?, icon: String?, tint: String?, id: String?, disabled: Bool?, adaLabel: String?) {
        self.title = title
        self.icon = icon
        self.tint = tint
        self.id = id
        self.disabled = disabled
        self.adaLabel = adaLabel
        super.init()
    }

    public override init() {
        self.title = nil
        self.icon = nil
        self.tint = nil
        self.id = nil
        self.disabled = nil
        self.adaLabel = nil
        super.init()
    }

    public required init(dictionary: [AnyHashable: Any]) {

        if let title = dictionary["title"] as? String {
            self.title = title
        } else {
            self.title = nil
        }
        if let icon = dictionary["icon"] as? String {
            self.icon = icon
        } else {
            self.icon = nil
        }
        if let tint = dictionary["tint"] as? String {
            self.tint = tint
        } else {
            self.tint = nil
        }
        if let id = dictionary["id"] as? String {
            self.id = id
        } else {
            self.id = nil
        }
        if let disabled = dictionary["disabled"] as? Bool {
            self.disabled = disabled
        } else {
            self.disabled = nil
        }
        if let adaLabel = dictionary["adaLabel"] as? String {
            self.adaLabel = adaLabel
        } else {
            self.adaLabel = nil
        }

        super.init(dictionary: dictionary)
    }

    public func toDictionary() -> NSDictionary {
        var dict = [:] as [AnyHashable: Any]


        if let nonNullTitle = self.title {
            dict["title"] = nonNullTitle
        }
        if let nonNullIcon = self.icon {
            dict["icon"] = nonNullIcon
        }
        if let nonNullTint = self.tint {
            dict["tint"] = nonNullTint
        }
        if let nonNullId = self.id {
            dict["id"] = nonNullId
        }
        if let nonNullDisabled = self.disabled {
            dict["disabled"] = nonNullDisabled
        }
        if let nonNullAdaLabel = self.adaLabel {
            dict["adaLabel"] = nonNullAdaLabel
        }
        return dict as NSDictionary
    }
}
#endif
