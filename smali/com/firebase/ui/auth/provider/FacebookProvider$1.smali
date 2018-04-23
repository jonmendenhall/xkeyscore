.class Lcom/firebase/ui/auth/provider/FacebookProvider$1;
.super Ljava/lang/Object;
.source "FacebookProvider.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/provider/FacebookProvider;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/provider/FacebookProvider;

.field final synthetic val$loginResult:Lcom/facebook/login/LoginResult;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/provider/FacebookProvider;Lcom/facebook/login/LoginResult;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->this$0:Lcom/firebase/ui/auth/provider/FacebookProvider;

    iput-object p2, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->val$loginResult:Lcom/facebook/login/LoginResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 3

    .line 128
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p1, "FacebookProvider"

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Facebook error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->this$0:Lcom/firebase/ui/auth/provider/FacebookProvider;

    invoke-static {p1}, Lcom/firebase/ui/auth/provider/FacebookProvider;->access$000(Lcom/firebase/ui/auth/provider/FacebookProvider;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "FacebookProvider"

    const-string p2, "Received null response from Facebook GraphRequest"

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->this$0:Lcom/firebase/ui/auth/provider/FacebookProvider;

    invoke-static {p1}, Lcom/firebase/ui/auth/provider/FacebookProvider;->access$000(Lcom/firebase/ui/auth/provider/FacebookProvider;)V

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "email"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FacebookProvider"

    const-string v2, "Failure retrieving Facebook email"

    .line 145
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p2

    :goto_0
    :try_start_1
    const-string v1, "name"

    .line 148
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v1, p2

    :goto_1
    :try_start_2
    const-string v2, "picture"

    .line 151
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "data"

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "url"

    .line 153
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-object p1, p2

    .line 156
    :goto_2
    iget-object p2, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->this$0:Lcom/firebase/ui/auth/provider/FacebookProvider;

    iget-object v2, p0, Lcom/firebase/ui/auth/provider/FacebookProvider$1;->val$loginResult:Lcom/facebook/login/LoginResult;

    invoke-static {p2, v2, v0, v1, p1}, Lcom/firebase/ui/auth/provider/FacebookProvider;->access$100(Lcom/firebase/ui/auth/provider/FacebookProvider;Lcom/facebook/login/LoginResult;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_3
    return-void
.end method
