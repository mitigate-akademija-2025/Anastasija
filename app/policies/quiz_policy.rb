class QuizPolicy < ApplicationPolicy
    attr_reader

    def initialize(user, quiz)
        @user = user
        @quiz = quiz
    end
    def index?
       @user.admin?
    end
end
