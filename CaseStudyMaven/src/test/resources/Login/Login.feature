Feature: Login Feature
This Application include
1)Login to Application and Compose an Email
2)Login with Invalid Data

Background:
Given Login application present
@LoginAndComposeEmail

Scenario Outline: Login to application and send an Email
When enter valid username "<username>"
And enter valid password "<password>"
And click on Login validButton
Then I should see email as "<email>"
And click on Inbox 
And click on Compose Message
And enter value for Send to as "<sendTo>"
And enter Subject as "<subject>"
And enter Message as "<message>"
And click on send button
Then I should see acknowledgement as "<ack>"
Examples:
|username|password						|email								|sendTo			|subject				|message																						|ack																							|
|Ashok135|Manipallearning@2021|ashok135246@gmail.com|abc1234567	|Hi For Testing	|Hello Admin,\n This is for testing. \nFrom,\n Ashok|The message has been sent to abc def (abc1234567)|

@InvalidLogin

Scenario: To test login with invalid data
When enter invalid username "<username>"
And enter invalid password "<password>"
And click on Login invalidButton
Then login should be unsuccessful with message "<error>"
Examples:
|username|password|error|
|admin123		|admin123|Login failed - incorrect login or password.|