Tmiw4::Application.routes.draw do
	root :to => "Solutions#index"

	resources :users do
		resources :problems do
			resources :solutions
		end
		resources :solutions do
			resources :feedbacks
		end
		resources :feedbacks
		resources :answers
	end

	resources :questions do
		resources :answers
	end

	resources :answers do
	end

	resources :problems do
	end

	resources :feedbacks do
	end
	
       	resources :solutions do
	end
end
