.class Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;
.super Ljava/lang/Object;
.source "RecoverPasswordActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->next(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

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

    .line 85
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    .line 87
    instance-of p1, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->access$000(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_error_email_does_not_exist:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
