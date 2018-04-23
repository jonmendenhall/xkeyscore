.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field final synthetic val$loggerRef:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 11

    if-eqz p1, :cond_4

    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    .line 673
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 675
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 677
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v3, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/login/LoginManager;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 685
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 687
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "com.facebook.platform.extra.PERMISSIONS"

    .line 690
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v3, "signed request"

    .line 692
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 694
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 696
    invoke-static {v3}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 699
    :cond_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    .line 701
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 702
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 703
    new-instance v10, Lcom/facebook/AccessToken;

    iget-object v3, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 712
    invoke-static {v10}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 714
    invoke-static {p1}, Lcom/facebook/login/LoginManager;->access$200(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 716
    invoke-static {p1}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    goto :goto_0

    .line 718
    :cond_2
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 721
    :goto_0
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v0, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1, v10}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto :goto_1

    .line 724
    :cond_3
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v0, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 725
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_1

    .line 729
    :cond_4
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v0, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 730
    iget-object p1, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {p1}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    :goto_1
    return-void
.end method
