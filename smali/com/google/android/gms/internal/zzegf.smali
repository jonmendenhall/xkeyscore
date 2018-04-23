.class public final Lcom/google/android/gms/internal/zzegf;
.super Lcom/google/android/gms/internal/zzedh;


# instance fields
.field private final zzmkl:Lcom/google/android/gms/internal/zzedn;

.field private final zzmrr:Lcom/google/android/gms/internal/zzeik;

.field private final zzmww:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegf;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzegf;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzegf;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzegf;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzeik;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegf;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzeia;

    sget-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzeia;-><init>(Lcom/google/android/gms/internal/zzeic;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeia;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedh;->zzbwd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeia;->zzbyh()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeic;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzbvp()Lcom/google/android/gms/internal/zzeik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedh;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzegf;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzegf;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegf;->zzmww:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
