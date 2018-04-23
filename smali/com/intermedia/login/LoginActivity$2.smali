.class Lcom/intermedia/login/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/intermedia/service/ApiUtils$APIResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/login/LoginActivity;->authenticateUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
        "Lcom/intermedia/model/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/intermedia/login/LoginActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/intermedia/login/LoginActivity$2;->this$0:Lcom/intermedia/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$2;->this$0:Lcom/intermedia/login/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to authenticate user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lcom/intermedia/login/LoginActivity;->access$200(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/intermedia/login/LoginActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Lcom/intermedia/model/Account;)V
    .locals 9
    .param p1    # Lcom/intermedia/model/Account;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$2;->this$0:Lcom/intermedia/login/LoginActivity;

    iget-object v0, v0, Lcom/intermedia/login/LoginActivity;->sessionManager:Lcom/intermedia/user/session/SessionManager;

    new-instance v8, Lcom/intermedia/user/session/UserSession;

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getUserId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getAdmin()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-virtual {p1}, Lcom/intermedia/model/Account;->getLoginToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/user/session/UserSession;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v8}, Lcom/intermedia/user/session/SessionManager;->setSession(Lcom/intermedia/user/session/UserSession;)V

    .line 239
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity$2;->this$0:Lcom/intermedia/login/LoginActivity;

    invoke-static {p1}, Lcom/intermedia/login/LoginActivity;->access$400(Lcom/intermedia/login/LoginActivity;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    check-cast p1, Lcom/intermedia/model/Account;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/LoginActivity$2;->onResult(Lcom/intermedia/model/Account;)V

    return-void
.end method
