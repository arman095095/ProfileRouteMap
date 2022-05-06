
import Module
import ModelInterfaces

public protocol ProfileRouteMap: AnyObject {
    func currentAccountModule(profile: ProfileModelProtocol) -> ProfileModule
    func friendAccountModule(profile: ProfileModelProtocol) -> ProfileModule
    func offerSendProfile(profile: ProfileModelProtocol) -> ProfileModule
    func offerRecieveProfile(profile: ProfileModelProtocol) -> ProfileModule
    func offersSendingProfilesList() -> ProfileModule
}

public protocol ProfileModuleInput: AnyObject {
    
}

public protocol ProfileModuleOutput: AnyObject {
    func openAccountSettingsModule()
}

public typealias ProfileModule = Module<ProfileModuleInput, ProfileModuleOutput>
