import ballerina/http;
import ballerina/auth;
import ballerina/config;
// Endpoints for mailgun

public type Client client object {
    public http:Client messagesEP;

    public function __init(MailgunConfig mailgunConfig){
        self.messagesEP = self.initClient(mailgunConfig, MESSAGES_ENDPOINT);
    }

    public remote function sendMessage(Message msg) {
        http:Request req = new;

    }

    public function initClient(MailgunConfig conf, string ep) returns http:Client {
        http:Client cl = new(string `{{API_BASE_URL}}/{{conf.domain}}/{{ep}}`, config = {
            auth: {
                scheme: http:BASIC_AUTH,
                username: "api",
                password: conf.domain
            }
        });

        return cl;
    }
};

# Mailgun configuration
#
# + domain - domain Domain issued by mailgun 
# + api - api API key provided by mailgun
public type MailgunConfig record {
    string domain = "";
    string api = "";
};
