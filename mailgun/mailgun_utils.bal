import ballerina/io;

// Utilities

# Create URL encoded request body with given key and value.
# + requestBody - Request body to be appended values
# + key - Key of the form value parameter
# + value - Value of the form value parameter
# + return - Created request body with encoded string or `error` if anything wrong happen when encoding the value
function createUrlEncodedRequestBody(string requestBody, string key, string value) returns string|error {
    var encodedVar = http:encode(value, "utf-8");
    string encodedString = "";
    string body = "";
    if (encodedVar is string) {
        encodedString = encodedVar;
    } else {
        error err = error("45", { message: "Error" });
        return err;
    }
    if (requestBody != EMPTY_STRING) {
        body = requestBody + AMPERSAND_SYMBOL;
    }
    return body + key + EQUAL_SYMBOL + encodedString;
}

function messageToUrlEncoded(Message msg) returns string|error {
    string body = "";
}