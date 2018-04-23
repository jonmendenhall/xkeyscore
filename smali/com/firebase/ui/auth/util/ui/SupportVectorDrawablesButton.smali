.class public Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "SupportVectorDrawablesButton.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p2}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->initSupportVectorDrawablesAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->initSupportVectorDrawablesAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initSupportVectorDrawablesAttrs(Landroid/util/AttributeSet;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 58
    sget v0, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableStartCompat:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    sget v1, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableEndCompat:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    sget v2, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableTopCompat:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    sget v3, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableBottomCompat:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v1

    goto :goto_3

    .line 67
    :cond_1
    sget v0, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableStartCompat:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 69
    sget v3, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableEndCompat:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 71
    sget v4, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableTopCompat:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 73
    sget v5, Lcom/firebase/ui/auth/R$styleable;->SupportVectorDrawablesButton_drawableBottomCompat:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v0, v1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eq v3, v1, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eq v4, v1, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v2

    :goto_2
    if-eq v5, v1, :cond_5

    .line 86
    invoke-virtual {p0}, Lcom/firebase/ui/auth/util/ui/SupportVectorDrawablesButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    :cond_5
    :goto_3
    invoke-static {p0, v0, v4, v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
