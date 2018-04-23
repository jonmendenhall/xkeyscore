.class Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;
.super Ljava/lang/Object;
.source "SignInDelegate.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

.field final synthetic val$response:Lcom/firebase/ui/auth/IdpResponse;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    iput-object p2, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 2

    .line 290
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;->val$response:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->finish(ILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 287
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$2;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
