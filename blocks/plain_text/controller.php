<?php 
defined('C5_EXECUTE') or die("Access Denied.");
/**
 * A block controller for displaying plain text on a page.
 * @author Katja Durrani
 */
class PlainTextBlockController extends BlockController {
	
	protected $btTable = 'btPlainText';
	protected $btName = 'Plain text';
	protected $btHandle = 'plain_text';
	protected $btInterfaceWidth = "600";
	protected $btWrapperClass = 'ccm-ui';
	protected $btInterfaceHeight = "465";
	protected $btCacheBlockRecord = true;
	protected $btCacheBlockOutput = true;
	protected $btCacheBlockOutputOnPost = true;
	protected $btCacheBlockOutputForRegisteredUsers = true;
		
	public function getBlockTypeDescription() {
		return t("For adding plain text.");
	}
	
	public function getBlockTypeName() {
		return t("Plain Text");
	}	 
	
	public function __construct($obj = null) {		
		parent::__construct($obj); 
	}
	
	public function view(){ 
		$this->set('content', $this->content); 
	} 
	
	public function getSearchableContent() {
		return $this->content;
	}
	
	public function save($data) { 
		$args['content'] = isset($data['content']) ? $data['content'] : '';
		parent::save($args);
	}
	
}

?>