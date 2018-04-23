.class Lcom/intermedia/login/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/intermedia/service/ApiUtils$APIResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/login/LoginActivity;->checkUIDAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/intermedia/service/ApiUtils$APIResponseListener<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/login/LoginActivity;

.field final synthetic val$firebaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    iput-object p2, p0, Lcom/intermedia/login/LoginActivity$1;->val$firebaseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check UID available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Lcom/intermedia/login/LoginActivity;->access$200(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/intermedia/login/LoginActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    .line 214
    invoke-static {v0}, Lcom/intermedia/login/LoginActivity;->access$000(Lcom/intermedia/login/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/intermedia/login/LoginActivity$1;->val$firebaseToken:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/intermedia/login/RegisterUserActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    invoke-virtual {p1}, Lcom/intermedia/login/LoginActivity;->finish()V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/intermedia/login/LoginActivity$1;->this$0:Lcom/intermedia/login/LoginActivity;

    iget-object v0, p0, Lcom/intermedia/login/LoginActivity$1;->val$firebaseToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/intermedia/login/LoginActivity;->access$100(Lcom/intermedia/login/LoginActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/intermedia/login/LoginActivity$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
