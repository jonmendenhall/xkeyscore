.class public Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;
.super Ljava/lang/Object;
.source "GetCallerIdentityRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller<",
        "Lcom/amazonaws/Request<",
        "Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;",
        ">;",
        "Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;",
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
.method public marshall(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(GetCallerIdentityRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string p1, "Action"

    const-string v1, "GetCallerIdentity"

    .line 40
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Version"

    const-string v1, "2011-06-15"

    .line 41
    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

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
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;->marshall(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
