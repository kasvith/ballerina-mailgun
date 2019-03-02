import ballerina/mime;
import ballerina/time;
// Mailgun types

# Mailgun Response for mails
#
# + message - message Message received from mailgun 
# + id - id Id for mail
public type MailResponse record {
    string message = "";
    string id = "";
};

# Represents a Mailgun Message format
# + _from - _from Sender of mail 
# + _to - _to Reciver of mail
# + _subject - _subject Subject of email
# + _text - _text Textual content of email
# + _html - _html HTML content of email
# + _cc - _cc CC for mail
# + _bcc - _bcc BCC for mail
# + _attachments - _attachments Attachments for mail 
# + _inline - _inline Parameter Description 
# + _tag - _tag Parameter Description 
# + _dkim - _dkim Parameter Description 
# + _deliveryTime - _deliveryTime Parameter Description 
# + _tracking - _tracking Parameter Description 
# + _trackingOpens - _trackingOpens Parameter Description 
# + _requireTLS - _requireTLS Parameter Description 
# + _skipVerification - _skipVerification Parameter Description 
# + _hXMyHeader - _hXMyHeader Parameter Description 
# + _myVar - _myVar Parameter Description 
# + _recipentVariables - _recipentVariables Parameter Description
public type Message record {
    string _from = "";
    string[] _to = [];
    string _subject = "";
    string _text = "";
    string? _html = "";
    string[]? _cc = [];
    string[]? _bcc = [];
    mime:Entity[]? _attachments = [];
    mime:Entity[]? _inline = [];
    string? _tag = "";
    boolean? _dkim = false;
    time:Time? _deliveryTime;
    boolean? _tracking = false;
    boolean? _trackingOpens = false;
    boolean? _requireTLS = false;
    boolean? _skipVerification = false;
    string? _hXMyHeader = "";
    string? _myVar = "";
    map<any>? _recipentVariables; 
};
