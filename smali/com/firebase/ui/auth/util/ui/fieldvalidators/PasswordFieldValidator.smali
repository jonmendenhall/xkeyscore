.class public Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;
.super Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;
.source "PasswordFieldValidator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mMinLength:I


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 4

    .line 27
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    .line 28
    iput p2, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mMinLength:I

    .line 29
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/firebase/ui/auth/R$plurals;->fui_error_weak_password:I

    iget v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mMinLength:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mMinLength:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected isValid(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/PasswordFieldValidator;->mMinLength:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
