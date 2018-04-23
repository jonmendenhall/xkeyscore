.class public Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;
.super Ljava/lang/Object;
.source "BaseValidator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected mEmptyMessage:Ljava/lang/String;

.field protected mErrorContainer:Landroid/support/design/widget/TextInputLayout;

.field protected mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorMessage:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    return-void
.end method


# virtual methods
.method protected isValid(Ljava/lang/CharSequence;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public validate(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mEmptyMessage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mEmptyMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 38
    :cond_1
    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    iget-object v0, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1
.end method
