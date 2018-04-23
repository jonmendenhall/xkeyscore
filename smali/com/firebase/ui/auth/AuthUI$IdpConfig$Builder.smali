.class public Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;
.super Ljava/lang/Object;
.source "AuthUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/AuthUI$IdpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParams:Landroid/os/Bundle;

.field private mProviderId:Ljava/lang/String;

.field private mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    .line 439
    sget-object v0, Lcom/firebase/ui/auth/AuthUI;->SUPPORTED_PROVIDERS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mProviderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/firebase/ui/auth/AuthUI$IdpConfig;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    :goto_0
    iput-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    .line 474
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    :goto_1
    iput-object v0, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    .line 476
    new-instance v0, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    iget-object v1, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    iget-object v3, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/firebase/ui/auth/AuthUI$1;)V

    return-object v0
.end method

.method public setParams(Landroid/os/Bundle;)Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public setPermissions(Ljava/util/List;)Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;"
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->mScopes:Ljava/util/List;

    return-object p0
.end method
