.class Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;
.super Ljava/lang/Object;
.source "WelcomeBackPasswordPrompt.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V
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
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;

    iget-object v1, v1, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    .line 184
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->access$100(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object v1

    .line 185
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;->this$1:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;

    iget-object v2, v2, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    .line 183
    invoke-virtual {v0, v1, p1, v2}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Lcom/firebase/ui/auth/IdpResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
