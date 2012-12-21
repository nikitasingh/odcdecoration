class Tasks_user < ActiveRecord::Base
		validates :task_id,  :presence => true
			validates :user_id,  :presence => true
end
