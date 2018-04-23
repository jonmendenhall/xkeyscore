.class Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
.super Ljava/lang/Object;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoginButtonProperties"
.end annotation


# instance fields
.field private authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;

.field private permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    .line 137
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/LoginAuthorizationType;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 177
    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Permissions for publish actions cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 168
    sget-object p1, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;

    .line 154
    sget-object p1, Lcom/facebook/internal/LoginAuthorizationType;->READ:Lcom/facebook/internal/LoginAuthorizationType;

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;

    return-void
.end method
