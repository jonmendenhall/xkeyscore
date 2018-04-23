.class public Lcom/amazonaws/services/s3/model/RedirectRule;
.super Ljava/lang/Object;
.source "RedirectRule.java"


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpRedirectCode:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private replaceKeyPrefixWith:Ljava/lang/String;

.field private replaceKeyWith:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRedirectCode()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceKeyPrefixWith()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyPrefixWith:Ljava/lang/String;

    return-object v0
.end method

.method public getReplaceKeyWith()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyWith:Ljava/lang/String;

    return-object v0
.end method

.method public getprotocol()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->hostName:Ljava/lang/String;

    return-void
.end method

.method public setHttpRedirectCode(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setReplaceKeyPrefixWith(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyPrefixWith:Ljava/lang/String;

    return-void
.end method

.method public setReplaceKeyWith(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->replaceKeyWith:Ljava/lang/String;

    return-void
.end method

.method public withHostName(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHostName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withHttpRedirectCode(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RedirectRule;->httpRedirectCode:Ljava/lang/String;

    return-object p0
.end method

.method public withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setProtocol(Ljava/lang/String;)V

    return-object p0
.end method

.method public withReplaceKeyPrefixWith(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    return-object p0
.end method

.method public withReplaceKeyWith(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RedirectRule;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyWith(Ljava/lang/String;)V

    return-object p0
.end method
