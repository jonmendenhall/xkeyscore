.class Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;
.super Ljava/lang/Object;
.source "RegisterEmailFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 254
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;

    if-eqz v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->access$000(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$plurals;->fui_error_weak_password:I

    sget v2, Lcom/firebase/ui/auth/R$integer;->fui_min_password_length:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    if-eqz v0, :cond_1

    .line 260
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->access$100(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_invalid_email_address:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :cond_1
    instance-of p1, p1, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    if-eqz p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/firebase/ui/auth/util/data/ProviderUtils;->fetchTopProvider(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 267
    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;

    invoke-direct {v1, p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;-><init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;)V

    .line 266
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$1;-><init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;)V

    .line 303
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 313
    :cond_2
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->access$100(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_email_account_creation_error:I

    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    return-void
.end method
