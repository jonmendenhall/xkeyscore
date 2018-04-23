.class Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;
.super Ljava/lang/Object;
.source "RegisterEmailFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$response:Lcom/firebase/ui/auth/IdpResponse;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->val$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->access$300(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 245
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->access$200(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object v1

    .line 246
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    .line 244
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 241
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$3;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
