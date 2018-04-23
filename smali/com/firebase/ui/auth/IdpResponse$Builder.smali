.class public Lcom/firebase/ui/auth/IdpResponse$Builder;
.super Ljava/lang/Object;
.source "IdpResponse.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/IdpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSecret:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private final mUser:Lcom/firebase/ui/auth/data/model/User;


# direct methods
.method public constructor <init>(Lcom/firebase/ui/auth/data/model/User;)V
    .locals 0
    .param p1    # Lcom/firebase/ui/auth/data/model/User;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mUser:Lcom/firebase/ui/auth/data/model/User;

    return-void
.end method


# virtual methods
.method public build()Lcom/firebase/ui/auth/IdpResponse;
    .locals 5

    .line 218
    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mUser:Lcom/firebase/ui/auth/data/model/User;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User;->getProviderId()Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/firebase/ui/auth/AuthUI;->SUPPORTED_PROVIDERS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_0
    sget-object v1, Lcom/firebase/ui/auth/AuthUI;->SOCIAL_PROVIDERS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Token cannot be null when using a non-email provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "twitter.com"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mSecret:Ljava/lang/String;

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secret cannot be null when using the Twitter provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_2
    new-instance v0, Lcom/firebase/ui/auth/IdpResponse;

    iget-object v1, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mUser:Lcom/firebase/ui/auth/data/model/User;

    iget-object v2, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mSecret:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/ui/auth/IdpResponse;-><init>(Lcom/firebase/ui/auth/data/model/User;Ljava/lang/String;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse$1;)V

    return-object v0
.end method

.method public setSecret(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/firebase/ui/auth/IdpResponse$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/firebase/ui/auth/IdpResponse$Builder;->mToken:Ljava/lang/String;

    return-object p0
.end method
