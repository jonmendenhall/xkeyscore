.class Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;
.super Ljava/lang/Object;
.source "SignInDelegate.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-static {p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->access$100(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate$1;->this$0:Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;

    invoke-static {p1}, Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;->access$000(Lcom/firebase/ui/auth/util/signincontainer/SignInDelegate;)V

    :goto_1
    return-void
.end method
