extension Config {
    public func setup() throws {
        try setupProviders()
        try setupPreparations()
    }
    
    /// Configure providers
    private func setupProviders() throws {}
    
    /// Add all models that should have their
    /// schemas prepared before the app boots
    private func setupPreparations() throws {}
}
