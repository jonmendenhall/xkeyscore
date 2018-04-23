.class public Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;
.super Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;
.source "RequiredFieldValidator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    .line 26
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_required_field:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/RequiredFieldValidator;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected isValid(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
