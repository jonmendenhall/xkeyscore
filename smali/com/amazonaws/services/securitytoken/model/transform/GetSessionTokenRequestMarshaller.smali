.class public Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;
.super Ljava/lang/Object;
.source "GetSessionTokenRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(GetSessionTokenRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "Action"

    const-string v2, "GetSessionToken"

    .line 39
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version"

    const-string v2, "2011-06-15"

    .line 40
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "DurationSeconds"

    .line 45
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "SerialNumber"

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "TokenCode"

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
