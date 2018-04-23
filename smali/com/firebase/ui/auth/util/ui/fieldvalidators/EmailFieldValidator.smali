.class public Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;
.super Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;
.source "EmailFieldValidator.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/util/ui/fieldvalidators/BaseValidator;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    .line 27
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_invalid_email_address:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->mErrorMessage:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->mErrorContainer:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_missing_email_address:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/auth/util/ui/fieldvalidators/EmailFieldValidator;->mEmptyMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected isValid(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 33
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
