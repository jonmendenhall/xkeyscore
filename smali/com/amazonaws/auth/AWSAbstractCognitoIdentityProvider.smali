.class public abstract Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;
.super Ljava/lang/Object;
.source "AWSAbstractCognitoIdentityProvider.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCognitoIdentityProvider;


# instance fields
.field private final accountId:Ljava/lang/String;

.field protected final cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

.field protected identityId:Ljava/lang/String;

.field private final identityPoolId:Ljava/lang/String;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/auth/IdentityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected loginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;

    new-instance v1, Lcom/amazonaws/auth/AnonymousAWSCredentials;

    invoke-direct {v1}, Lcom/amazonaws/auth/AnonymousAWSCredentials;-><init>()V

    invoke-direct {v0, v1, p3}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    .line 115
    iget-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-static {p4}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->setRegion(Lcom/amazonaws/regions/Region;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->accountId:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityPoolId:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->listeners:Ljava/util/List;

    .line 74
    iput-object p3, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    return-void
.end method


# virtual methods
.method protected appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->withAccountId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    .line 168
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;->withLogins(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getId(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;->getIdentityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityPoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    return-object v0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;-><init>()V

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->withIdentityId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;->withLogins(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->cib:Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;

    .line 198
    invoke-interface {v1, v0}, Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;->getOpenIdToken(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public identityChanged(Ljava/lang/String;)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    .line 259
    iget-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/IdentityChangedListener;

    .line 260
    iget-object v2, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/amazonaws/auth/IdentityChangedListener;->identityChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refresh()Ljava/lang/String;
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public registerIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setIdentityId(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    return-void
.end method

.method public setLogins(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->loginsMap:Ljava/util/Map;

    return-void
.end method

.method protected setToken(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    return-void
.end method

.method public unregisterIdentityChangedListener(Lcom/amazonaws/auth/IdentityChangedListener;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->identityChanged(Ljava/lang/String;)V

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 303
    :cond_2
    iput-object p2, p0, Lcom/amazonaws/auth/AWSAbstractCognitoIdentityProvider;->token:Ljava/lang/String;

    :cond_3
    return-void
.end method
