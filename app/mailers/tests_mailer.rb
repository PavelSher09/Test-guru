class TestsMailer < ApplicationMailer
  def completed_tests(test_passage)
    @user = test.passage.user
    @test = test.passage.test

    mail to: @user.email, subject: 'You just comleted the TestGuru test!'
  end
end
