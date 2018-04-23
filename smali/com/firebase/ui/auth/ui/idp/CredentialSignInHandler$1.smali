.class Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;
.super Ljava/lang/Object;
.source "CredentialSignInHandler.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 p1, 0x14

    .line 77
    invoke-static {p1}, Lcom/firebase/ui/auth/IdpResponse;->getErrorCodeIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->finish(ILandroid/content/Intent;)V

    return-void
.end method
