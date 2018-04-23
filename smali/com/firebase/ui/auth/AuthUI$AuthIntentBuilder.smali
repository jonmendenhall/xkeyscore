.class abstract Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
.super Ljava/lang/Object;
.source "AuthUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/AuthUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AuthIntentBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEnableCredentials:Z

.field mEnableHints:Z

.field mLogo:I

.field mPrivacyPolicyUrl:Ljava/lang/String;

.field mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;"
        }
    .end annotation
.end field

.field mTheme:I

.field mTosUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/firebase/ui/auth/AuthUI;


# direct methods
.method private constructor <init>(Lcom/firebase/ui/auth/AuthUI;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->this$0:Lcom/firebase/ui/auth/AuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 486
    iput p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mLogo:I

    .line 487
    invoke-static {}, Lcom/firebase/ui/auth/AuthUI;->getDefaultTheme()I

    move-result p1

    iput p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mTheme:I

    .line 488
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    const/4 p1, 0x1

    .line 491
    iput-boolean p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mEnableCredentials:Z

    .line 492
    iput-boolean p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mEnableHints:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/ui/auth/AuthUI;Lcom/firebase/ui/auth/AuthUI$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;-><init>(Lcom/firebase/ui/auth/AuthUI;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    new-instance v1, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;

    const-string v2, "password"

    invoke-direct {v1, v2}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->build()Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->this$0:Lcom/firebase/ui/auth/AuthUI;

    invoke-static {v0}, Lcom/firebase/ui/auth/AuthUI;->access$300(Lcom/firebase/ui/auth/AuthUI;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/firebase/ui/auth/KickoffActivity;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;
.end method

.method public setAvailableProviders(Ljava/util/List;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;)TT;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    .line 554
    iget-object v1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Each provider can only be set once. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was set twice."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    :try_start_0
    const-class v1, Lcom/facebook/FacebookSdk;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 566
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Facebook provider cannot be configured without dependency. Did you forget to add \'com.facebook.android:facebook-android-sdk:VERSION\' dependency?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 573
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "twitter.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    :try_start_1
    const-class v0, Lcom/twitter/sdk/android/core/TwitterCore;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 577
    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Twitter provider cannot be configured without dependency. Did you forget to add \'com.twitter.sdk.android:twitter-core:VERSION\' dependency?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object p0
.end method

.method public setIsSmartLockEnabled(Z)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 627
    invoke-virtual {p0, p1, p1}, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->setIsSmartLockEnabled(ZZ)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;

    return-object p0
.end method

.method public setIsSmartLockEnabled(ZZ)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)TT;"
        }
    .end annotation

    .line 642
    iput-boolean p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mEnableCredentials:Z

    .line 643
    iput-boolean p2, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mEnableHints:Z

    return-object p0
.end method

.method public setLogo(I)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 516
    iput p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mLogo:I

    return-object p0
.end method

.method public setPrivacyPolicyUrl(Ljava/lang/String;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mPrivacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setProviders(Ljava/util/List;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/firebase/ui/auth/AuthUI$IdpConfig;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->setAvailableProviders(Ljava/util/List;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;

    .line 607
    iget-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    new-instance v0, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/firebase/ui/auth/AuthUI$IdpConfig$Builder;->build()Lcom/firebase/ui/auth/AuthUI$IdpConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mProviders:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0
.end method

.method public setTheme(I)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->this$0:Lcom/firebase/ui/auth/AuthUI;

    .line 503
    invoke-static {v0}, Lcom/firebase/ui/auth/AuthUI;->access$300(Lcom/firebase/ui/auth/AuthUI;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "theme identifier is unknown or not a style definition"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 502
    invoke-static {v0, p1, v1, v2}, Lcom/firebase/ui/auth/util/Preconditions;->checkValidStyle(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)I

    .line 506
    iput p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mTheme:I

    return-object p0
.end method

.method public setTosUrl(Ljava/lang/String;)Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lcom/firebase/ui/auth/AuthUI$AuthIntentBuilder;->mTosUrl:Ljava/lang/String;

    return-object p0
.end method
