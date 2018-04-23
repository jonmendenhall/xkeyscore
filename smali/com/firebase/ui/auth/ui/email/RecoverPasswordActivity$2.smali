.class Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;
.super Ljava/lang/Object;
.source "RecoverPasswordActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->next(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    .line 78
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->val$email:Ljava/lang/String;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;->this$0:Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    .line 79
    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 78
    invoke-static {p1, v0}, Lcom/firebase/ui/auth/ui/email/RecoveryEmailSentDialog;->show(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
