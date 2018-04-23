.class public Lcom/google/android/gms/internal/zzejg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzejg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzejg;",
        ">;"
    }
.end annotation


# static fields
.field private static final zznbs:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbt:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbu:Lcom/google/android/gms/internal/zzejg;

.field private static final zznbv:Lcom/google/android/gms/internal/zzejg;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejg;->zznbv:Lcom/google/android/gms/internal/zzejg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzejh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbzn()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzo()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzp()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public static zzbzq()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbv:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzejg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelt;->zzqg(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzejg$zza;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzejg$zza;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzejg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzejg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejg;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ChildKey(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzr()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbu:Lcom/google/android/gms/internal/zzejg;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected zzbzs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzejg;)I
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbs:Lcom/google/android/gms/internal/zzejg;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzejg;->zznbt:Lcom/google/android/gms/internal/zzejg;

    if-ne p0, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejg;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzv(II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelt;->zzv(II)I

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzs()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejg;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    return v2

    :cond_8
    return v1
.end method
