.class public final Lcom/firebase/ui/auth/data/model/PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumber.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final EMPTY_PHONE_NUMBER:Lcom/firebase/ui/auth/data/model/PhoneNumber;


# instance fields
.field private final mCountryCode:Ljava/lang/String;

.field private final mCountryIso:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/firebase/ui/auth/data/model/PhoneNumber;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/firebase/ui/auth/data/model/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->EMPTY_PHONE_NUMBER:Lcom/firebase/ui/auth/data/model/PhoneNumber;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mPhoneNumber:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mCountryIso:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public static emptyPhone()Lcom/firebase/ui/auth/data/model/PhoneNumber;
    .locals 1

    .line 41
    sget-object v0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->EMPTY_PHONE_NUMBER:Lcom/firebase/ui/auth/data/model/PhoneNumber;

    return-object v0
.end method

.method public static isCountryValid(Lcom/firebase/ui/auth/data/model/PhoneNumber;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->EMPTY_PHONE_NUMBER:Lcom/firebase/ui/auth/data/model/PhoneNumber;

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValid(Lcom/firebase/ui/auth/data/model/PhoneNumber;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 45
    sget-object v0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->EMPTY_PHONE_NUMBER:Lcom/firebase/ui/auth/data/model/PhoneNumber;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/firebase/ui/auth/data/model/PhoneNumber;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/PhoneNumber;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method
