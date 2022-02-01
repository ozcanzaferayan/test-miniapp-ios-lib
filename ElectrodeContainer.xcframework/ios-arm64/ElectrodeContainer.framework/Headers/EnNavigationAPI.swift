#if swift(>=4.0)
@objcMembers public class EnNavigationAPI: NSObject {
    static let kRequestBack = "com.ernnavigationApi.ern.api.request.back"
    static let kRequestFinish = "com.ernnavigationApi.ern.api.request.finish"
    static let kEventNavEvent = "com.ernnavigationApi.ern.api.event.navEvent"
    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate"
    static let kEventOnNavButtonClick = "com.ernnavigationApi.ern.api.event.onNavButtonClick"
    static let kRequestUpdate = "com.ernnavigationApi.ern.api.request.update"

    public lazy var events: EnNavigationAPIEvents = {
        EnNavigationEvents()
    }()

    public lazy var requests: EnNavigationAPIRequests = {
        EnNavigationRequests()
    }()
}

@objcMembers public class EnNavigationAPIEvents: NSObject {
    public func addNavEventEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeNavEventEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventNavEvent(eventData _: NavEventData) {
        assertionFailure("should override")
    }
    public func addOnNavButtonClickEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeOnNavButtonClickEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventOnNavButtonClick(buttonId _: String) {
        assertionFailure("should override")
    }
}

@objcMembers public class EnNavigationAPIRequests: NSObject {
    public func registerBackRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerFinishRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerNavigateRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerUpdateRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func unregisterBackRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFinishRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterNavigateRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterUpdateRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func back(route _: ErnNavRoute, responseCompletionHandler _: @escaping (None?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func finish(finalPayload _: String, responseCompletionHandler _: @escaping (None?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func navigate(route _: ErnNavRoute, responseCompletionHandler _: @escaping (None?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }

    public func update(updatedRoute _: ErnNavRoute, responseCompletionHandler _: @escaping (None?, ElectrodeFailureMessage?) -> Void) {
        assertionFailure("should override")
    }
}

#else

public class EnNavigationAPI: NSObject {
    static let kRequestBack = "com.ernnavigationApi.ern.api.request.back"
    static let kRequestFinish = "com.ernnavigationApi.ern.api.request.finish"
    static let kEventNavEvent = "com.ernnavigationApi.ern.api.event.navEvent"
    static let kRequestNavigate = "com.ernnavigationApi.ern.api.request.navigate"
    static let kEventOnNavButtonClick = "com.ernnavigationApi.ern.api.event.onNavButtonClick"
    static let kRequestUpdate = "com.ernnavigationApi.ern.api.request.update"

    public lazy var events: EnNavigationAPIEvents = {
        EnNavigationEvents()
    }()

    public lazy var requests: EnNavigationAPIRequests = {
        EnNavigationRequests()
    }()
}

public class EnNavigationAPIEvents: NSObject {
    public func addNavEventEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeNavEventEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventNavEvent(eventData _: NavEventData) {
        assertionFailure("should override")
    }
    public func addOnNavButtonClickEventListener(eventListener _: @escaping ElectrodeBridgeEventListener) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func removeOnNavButtonClickEventListener(uuid _: UUID) -> ElectrodeBridgeEventListener? {
        assertionFailure("should override")
        return nil
    }

    public func emitEventOnNavButtonClick(buttonId _: String) {
        assertionFailure("should override")
    }
}

public class EnNavigationAPIRequests: NSObject {
    public func registerBackRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerFinishRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerNavigateRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func registerUpdateRequestHandler(handler _: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID? {
        assertionFailure("should override")
        return UUID()
    }

    public func unregisterBackRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterFinishRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterNavigateRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func unregisterUpdateRequestHandler(uuid _: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }

    public func back(route _: ErnNavRoute, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func finish(finalPayload _: String, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func navigate(route _: ErnNavRoute, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

    public func update(updatedRoute _: ErnNavRoute, responseCompletionHandler _: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }
}
#endif
