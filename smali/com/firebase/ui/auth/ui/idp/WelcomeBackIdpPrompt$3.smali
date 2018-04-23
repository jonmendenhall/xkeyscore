.class Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;
.super Ljava/lang/Object;
.source "WelcomeBackIdpPrompt.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V
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
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

.field final synthetic val$idpResponse:Lcom/firebase/ui/auth/IdpResponse;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->val$idpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->access$200(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    .line 157
    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->access$200(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v1, "WelcomeBackIdpPrompt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error signing in with previous credential "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->val$idpResponse:Lcom/firebase/ui/auth/IdpResponse;

    .line 160
    invoke-virtual {v3}, Lcom/firebase/ui/auth/IdpResponse;->getProviderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->val$idpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;-><init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;Lcom/firebase/ui/auth/IdpResponse;)V

    .line 161
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->val$idpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v1}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 152
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$3;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
