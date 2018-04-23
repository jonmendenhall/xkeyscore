.class Lcom/firebase/ui/auth/provider/TwitterProvider$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/provider/TwitterProvider;->success(Lcom/twitter/sdk/android/core/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/provider/TwitterProvider;

.field final synthetic val$sessionResult:Lcom/twitter/sdk/android/core/Result;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/provider/TwitterProvider;Lcom/twitter/sdk/android/core/Result;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->this$0:Lcom/firebase/ui/auth/provider/TwitterProvider;

    iput-object p2, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->val$sessionResult:Lcom/twitter/sdk/android/core/Result;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->this$0:Lcom/firebase/ui/auth/provider/TwitterProvider;

    invoke-static {p1}, Lcom/firebase/ui/auth/provider/TwitterProvider;->access$100(Lcom/firebase/ui/auth/provider/TwitterProvider;)Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onFailure()V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    .line 103
    iget-object v0, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->this$0:Lcom/firebase/ui/auth/provider/TwitterProvider;

    invoke-static {v0}, Lcom/firebase/ui/auth/provider/TwitterProvider;->access$100(Lcom/firebase/ui/auth/provider/TwitterProvider;)Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->this$0:Lcom/firebase/ui/auth/provider/TwitterProvider;

    iget-object v2, p0, Lcom/firebase/ui/auth/provider/TwitterProvider$1;->val$sessionResult:Lcom/twitter/sdk/android/core/Result;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterSession;

    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/User;->email:Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->profileImageUrlHttps:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 103
    invoke-static {v1, v2, v3, v4, p1}, Lcom/firebase/ui/auth/provider/TwitterProvider;->access$000(Lcom/firebase/ui/auth/provider/TwitterProvider;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;->onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V

    return-void
.end method
