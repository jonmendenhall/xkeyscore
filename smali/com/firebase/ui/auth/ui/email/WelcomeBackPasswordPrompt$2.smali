.class Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;
.super Ljava/lang/Object;
.source "WelcomeBackPasswordPrompt.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->validateAndSignIn(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

.field final synthetic val$authCredential:Lcom/google/firebase/auth/AuthCredential;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$response:Lcom/firebase/ui/auth/IdpResponse;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$authCredential:Lcom/google/firebase/auth/AuthCredential;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$authCredential:Lcom/google/firebase/auth/AuthCredential;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    .line 169
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->access$100(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;

    move-result-object v1

    .line 170
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    .line 168
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->saveCredentialsOrFinish(Lcom/firebase/ui/auth/util/signincontainer/SaveSmartLock;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/firebase/ui/auth/IdpResponse;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$authCredential:Lcom/google/firebase/auth/AuthCredential;

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/data/remote/ProfileMerger;

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {v0, v1}, Lcom/firebase/ui/auth/data/remote/ProfileMerger;-><init>(Lcom/firebase/ui/auth/IdpResponse;)V

    .line 176
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v1, "WelcomeBackPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error signing in with credential "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->val$authCredential:Lcom/google/firebase/auth/AuthCredential;

    .line 179
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2$1;-><init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;)V

    .line 180
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$2;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
