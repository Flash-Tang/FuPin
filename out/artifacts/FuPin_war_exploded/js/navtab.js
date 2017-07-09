/**
 * Created by Chen Weiyu on 2016/8/10.
 */

function navTab(o){
    var obj = o ||{};
    obj.btn.on('hover',function(){
        var _index=$(this).index();
        $(this).addClass('selected').siblings().removeClass('selected');
        $(obj.con).eq(_index).show().siblings(obj.con).hide();
    })

}

function hotTab(o){
    var obj = o ||{};
    obj.btn.on('click',function(){
        var _index=$(this).index();
        $(this).addClass('selected').siblings().removeClass('selected');
        $(obj.con).eq(_index).show().siblings(obj.con).hide();
    })

}