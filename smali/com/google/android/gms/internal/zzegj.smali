.class public final Lcom/google/android/gms/internal/zzegj;
.super Ljava/lang/Object;


# instance fields
.field private final zzmxe:Lcom/google/android/gms/internal/zzedk;

.field private final zzmxf:Lcom/google/android/gms/internal/zzegg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzegg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekc;ZLcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzekc;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekc;ZLcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzekc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehx;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehx;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzegj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzegj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzegj;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzegg;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzegg;->zzj(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzu(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegj;->zzmxf:Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegj;->zzmxe:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzegg;->zzu(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method
