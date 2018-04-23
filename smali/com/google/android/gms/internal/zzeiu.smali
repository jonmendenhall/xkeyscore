.class public final Lcom/google/android/gms/internal/zzeiu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeiw;


# instance fields
.field private final zznaa:Lcom/google/android/gms/internal/zzejv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeiu;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeix;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p5

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-ne p4, v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p6, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p5, p2}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzehz;->zzd(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object p4

    :goto_0
    invoke-virtual {p6, p4}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object p4

    goto :goto_0

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/internal/zzehz;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object p4

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p5}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzejw;->zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;
    .locals 4

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzehz;->zzd(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/zzehz;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    :goto_2
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzeit;->zza(Lcom/google/android/gms/internal/zzehz;)V

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzejw;->zzk(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    return-object p1
.end method

.method public final zzbyr()Lcom/google/android/gms/internal/zzejv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeiu;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object v0
.end method

.method public final zzbzh()Lcom/google/android/gms/internal/zzeiw;
    .locals 0

    return-object p0
.end method

.method public final zzbzi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
