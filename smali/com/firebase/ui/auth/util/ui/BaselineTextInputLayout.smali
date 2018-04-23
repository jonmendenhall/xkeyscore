.class public Lcom/firebase/ui/auth/util/ui/BaselineTextInputLayout;
.super Landroid/support/design/widget/TextInputLayout;
.source "BaselineTextInputLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/BaselineTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 26
    invoke-super {p0}, Landroid/support/design/widget/TextInputLayout;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method
