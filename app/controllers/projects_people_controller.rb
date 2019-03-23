class ProjectsPeopleController < ApplicationController
        def create
                person_id = params[:person_id]
                project_id = params[:id]
                @project_user = PersonProject.new(person_id: person_id,
                                               project_id: project_id)
                 @project_user.save
                 redirect_to  project_path
              end
            
              def delete_user_of_project
                @project = Project.find(params[:id])
                @project.people.delete(Person.find(params[:person_id]))
                redirect_to  project_path
               end

              def  delete_project_of_person
                @user = Person.find(params[:id])
                @user.projects.delete(Project.find(params[:project_id]))
                redirect_to person_path

              end
end
