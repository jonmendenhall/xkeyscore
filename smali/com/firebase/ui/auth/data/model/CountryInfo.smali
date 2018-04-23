.class public final Lcom/firebase/ui/auth/data/model/CountryInfo;
.super Ljava/lang/Object;
.source "CountryInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/firebase/ui/auth/data/model/CountryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mCountryCode:I

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCollator:Ljava/text/Collator;

    .line 34
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 35
    iput-object p1, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    .line 36
    iput p2, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    return-void
.end method

.method public static localeToEmoji(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x41

    const v1, 0x1f1e6

    add-int/2addr v0, v1

    const/4 v2, 0x1

    .line 48
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/lit8 p0, p0, -0x41

    add-int/2addr p0, v1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    .line 50
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/firebase/ui/auth/data/model/CountryInfo;)I
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->compareTo(Lcom/firebase/ui/auth/data/model/CountryInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    check-cast p1, Lcom/firebase/ui/auth/data/model/CountryInfo;

    .line 68
    iget v2, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    iget v3, p1, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    iget-object p1, p1, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    .line 69
    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getCountryCode()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    .line 75
    iget v0, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/firebase/ui/auth/data/model/CountryInfo;->localeToEmoji(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/firebase/ui/auth/data/model/CountryInfo;->mCountryCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
