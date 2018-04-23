.class public Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;
.super Lcom/firebase/ui/auth/ui/AppCompatBase;
.source "RecoverPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverPasswordActivity"


# instance fields
.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/firebase/ui/auth/ui/AppCompatBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;)Landroid/widget/EditText;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 48
    const-class v0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;

    invoke-static {p0, v0, p1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Lcom/firebase/ui/auth/data/model/FlowParameters;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_email"

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private next(Ljava/lang/String;)V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getAuthHelper()Lcom/firebase/ui/auth/util/AuthHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/util/AuthHelper;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->sendPasswordResetEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/TaskFailureLogger;

    const-string v2, "RecoverPasswordActivity"

    const-string v3, "Error sending password reset email"

    invoke-direct {v1, v2, v3}, Lcom/firebase/ui/auth/ui/TaskFailureLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$2;-><init>(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity$1;-><init>(Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;)V

    .line 82
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/firebase/ui/auth/R$id;->button_done:I

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_sending:I

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 100
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->next(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/firebase/ui/auth/ui/AppCompatBase;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/firebase/ui/auth/R$layout;->fui_forgot_password_layout:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->setContentView(I)V

    .line 57
    new-instance p1, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    sget v0, Lcom/firebase/ui/auth/R$id;->email_layout:I

    .line 58
    invoke-virtual {p0, v0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p1, v0}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailFieldValidator:Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;

    .line 59
    sget p1, Lcom/firebase/ui/auth/R$id;->email:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailEditText:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p0}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_email"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    sget p1, Lcom/firebase/ui/auth/R$id;->button_done:I

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RecoverPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
