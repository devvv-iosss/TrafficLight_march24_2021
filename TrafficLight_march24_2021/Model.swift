



struct DriverProfile {
    
    let profile: String
    let password: String
    
    
    static func getDriverPdofile() -> DriverProfile {
        
        DriverProfile(profile: "Driver",
                      password: "0")
        
    }
    static func getTrainPdofile() -> DriverProfile {
        
        DriverProfile(profile: "Train",
                      password: "0")
        
    }
    
}
