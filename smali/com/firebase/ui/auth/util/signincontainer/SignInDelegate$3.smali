.class Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$3;
.super Ljava/lang/Object;
.source "SignInDelegate.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->deleteCredentialAndRedirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$3;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SignInDelegate"

    const-string v1, "deleteCredential:failure"

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$3;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-static {p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->access$100(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V

    return-void
.end method
