//___FILEHEADER___

final class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___ViewOutput, ___VARIABLE_moduleName___InteractorOutput {
    
    private weak var view: ___VARIABLE_moduleName___ViewInput?
    private let interactor: ___VARIABLE_moduleName___InteractorInput
    private let router: ___VARIABLE_moduleName___RouterInput
    
    private let viewModelFactory: ___VARIABLE_moduleName___ViewModelFactory
    
    // MARK: - Init
    
    init(view: ___VARIABLE_moduleName___ViewInput,
         interactor: ___VARIABLE_moduleName___InteractorInput,
         router: ___VARIABLE_moduleName___RouterInput,
         viewModelFactory: ___VARIABLE_moduleName___ViewModelFactory) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.viewModelFactory = viewModelFactory
    }
    
    // MARK: - View Output
    
    func viewDidLoad() {
        let entity = interactor.loadData()
        let viewModel = makeViewModel(for: entity)
        view?.setup(with: viewModel)
    }
    
    // MARK: - View Model
    
    private func makeViewModel(for entity: ___VARIABLE_moduleName___Entity) -> ___VARIABLE_moduleName___ViewModel {
        return viewModelFactory.makeViewModel(for: entity)
    }
}
