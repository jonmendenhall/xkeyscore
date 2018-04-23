.class final Lcom/google/android/gms/internal/zzedv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzece;


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmti:Lcom/google/android/gms/internal/zzedn;

.field private synthetic zzmtp:Ljava/util/List;

.field private synthetic zzmtq:Lcom/google/android/gms/internal/zzedn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;Ljava/util/List;Lcom/google/android/gms/internal/zzedn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzbf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    const-string v0, "Transaction"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/lang/String;Lcom/google/android/gms/internal/zzedk;Lcom/google/firebase/database/DatabaseError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeeo;

    sget v2, Lcom/google/android/gms/internal/zzeep;->zzmuu:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzedn;->zzg(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzefh;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeeo;->zzb(Lcom/google/android/gms/internal/zzeeo;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzedn;->zzh(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzelp;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzefh;->zza(JZZLcom/google/android/gms/internal/zzeli;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeeo;->zzg(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeeo;->zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzejw;->zzj(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzejw;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzedw;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/zzedw;-><init>(Lcom/google/android/gms/internal/zzedv;Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    new-instance v3, Lcom/google/android/gms/internal/zzegf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeeo;->zzi(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeeo;->zze(Lcom/google/android/gms/internal/zzeeo;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzegf;-><init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzeik;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedn;->zze(Lcom/google/android/gms/internal/zzedh;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzedn;->zzi(Lcom/google/android/gms/internal/zzedn;)Lcom/google/android/gms/internal/zzehs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzehs;->zzak(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzehs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzedn;->zzj(Lcom/google/android/gms/internal/zzedn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmtq:Lcom/google/android/gms/internal/zzedn;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzedn;->zza(Lcom/google/android/gms/internal/zzedn;Ljava/util/List;)V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzm(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzeeo;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeeo;->zzc(Lcom/google/android/gms/internal/zzeeo;)I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/zzeep;->zzmuv:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/google/android/gms/internal/zzeep;->zzmuw:I

    :goto_3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    goto :goto_2

    :cond_3
    sget v0, Lcom/google/android/gms/internal/zzeep;->zzmus:I

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/zzedv;->zzmtp:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeeo;

    sget v1, Lcom/google/android/gms/internal/zzeep;->zzmuw:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;I)I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzeeo;->zza(Lcom/google/android/gms/internal/zzeeo;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzedv;->zzmti:Lcom/google/android/gms/internal/zzedn;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedv;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    return-void
.end method
