.class final Lcom/google/android/gms/internal/zzefx;
.super Lcom/google/android/gms/internal/zzedh;


# instance fields
.field private zzmrr:Lcom/google/android/gms/internal/zzeik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzefx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzefx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

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
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzedh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzefx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzefx;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeia;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeic;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbvp()Lcom/google/android/gms/internal/zzeik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefx;->zzmrr:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedh;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/gms/internal/zzefx;

    return p1
.end method
